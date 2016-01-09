# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get needed objects
        $Kernel::OM->ObjectParamAdd(
            'Kernel::System::UnitTest::Helper' => {
                RestoreSystemConfiguration => 1,
            },
        );
        my $Helper       = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
        my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

        # do not check RichText
        $Kernel::OM->Get('Kernel::System::SysConfig')->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Frontend::RichText',
            Value => 0
        );

        # create test user and login
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'users' ],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # get test user ID
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        # get ticket object
        my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

        # create test ticcket
        my $TicketID = $TicketObject->TicketCreate(
            TN           => $TicketObject->TicketCreateNumber(),
            Title        => "Selenium Test Ticket",
            Queue        => 'Raw',
            Lock         => 'unlock',
            Priority     => '3 normal',
            State        => 'new',
            CustomerID   => 'SeleniumCustomer',
            CustomerUser => "SeleniumCustomer\@localhost.com",
            OwnerID      => $TestUserID,
            UserID       => $TestUserID,
        );

        $Self->True(
            $TicketID,
            "Ticket is created - $TicketID",
        );

        # naviage to zoom view of created test ticket
        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');
        $Selenium->get("${ScriptAlias}index.pl?Action=AgentTicketZoom;TicketID=$TicketID");

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $("#nav-Communication ul").css({ "height": "auto", "opacity": "100" });'
        );

        # click on 'Note' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketNote;TicketID=$TicketID' )]")->click();

        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple").length;'
        );

        # open collapsed widgets, if necessary
        $Selenium->execute_script(
            "\$('.WidgetSimple.Collapsed .WidgetAction > a').trigger('click');"
        );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple.Expanded").length;'
        );

        # check page
        for my $ID (
            qw(Subject RichText FileUpload ArticleTypeID submitRichText)
            )
        {
            my $Element = $Selenium->find_element( "#$ID", 'css' );
            $Element->is_enabled();
            $Element->is_displayed();
        }

        # get default subject value from Ticket::Frontend::AgentTicketNote###Subject
        my $DefaultNoteSubject = $ConfigObject->Get("Ticket::Frontend::AgentTicketNote")->{Subject};

        # add note
        my $NoteSubject;
        if ($DefaultNoteSubject) {
            $NoteSubject = $DefaultNoteSubject;
        }
        else {
            $NoteSubject = 'Test';
            $Selenium->find_element( "#Subject", 'css' )->send_keys($NoteSubject);
        }

        $Selenium->find_element( "#RichText",       'css' )->send_keys('Test');
        $Selenium->find_element( "#submitRichText", 'css' )->click();

        # switch window back to agent ticket zoom view of created test ticket
        $Selenium->switch_to_window( $Handles->[0] );

        # expand Miscellaneous dropdown menu
        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $("#nav-Miscellaneous ul").css({ "height": "auto", "opacity": "100" });'
        );

        # click on 'History' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketHistory;TicketID=$TicketID' )]")->click();

        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple").length;'
        );

        # confirm note action
        my $NoteMsg = "Added note (Note)";
        $Self->True(
            index( $Selenium->get_page_source(), $NoteMsg ) > -1,
            "Ticket note action completed",
        );

        # close history window
        $Selenium->find_element( ".CancelClosePopup", 'css' )->click();

        # switch window back to agent ticket zoom view of created test ticket
        $Selenium->switch_to_window( $Handles->[0] );

        # click 'Reply to note' in order to check for pre-loaded reply-to note subject, see bug #10931
        $Selenium->find_element("//a[contains(\@href, \'ReplyToArticle' )]")->click();

        # switch window
        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple").length;'
        );

        # check for subject pre-loaded value
        my $NoteSubjectRe = $ConfigObject->Get('Ticket::SubjectRe') || 'Re';

        $Self->Is(
            $Selenium->find_element( '#Subject', 'css' )->get_value(),
            $NoteSubjectRe . ': ' . $NoteSubject,
            "Reply-To note #Subject pre-loaded value",
        );

        # close note window
        $Selenium->find_element( ".CancelClosePopup", 'css' )->click();

        # switch window back to agent ticket zoom view of created test ticket
        $Selenium->switch_to_window( $Handles->[0] );

        # test for bug#11205 (http://bugs.otrs.org/show_bug.cgi?id=11205)
        # check screen size to open popup accoring to available screen height
        # open popup with default height
        # after that open popup with adjusted height
        my $ParentWindowHeight = $Selenium->get_window_size()->{"height"};

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $("#nav-Communication ul").css({ "height": "auto", "opacity": "100" });'
        );

        # click on 'Note' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketNote;TicketID=$TicketID' )]")->click();

        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple").length;'
        );

        my $PopupWindowHeight = $Selenium->execute_script(
            "return \$(window).height();"
        );

        $Self->Is(
            $PopupWindowHeight,
            700,
            "Default popup window height"
        );

        # close note window
        $Selenium->find_element( ".CancelClosePopup", 'css' )->click();

        # switch window back to agent ticket zoom view of created test ticket
        $Selenium->switch_to_window( $Handles->[0] );

        # now try to open a popup with a height largr than the screen height (1000)
        # adjust PopupProfile for that
        $Selenium->execute_script(
            "Core.UI.Popup.ProfileAdd('Default', { WindowURLParams: 'dependent=yes,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no', Left: 100, Top: 100, Width: 1040, Height: 1700 });"
        );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $("#nav-Communication ul").css({ "height": "auto", "opacity": "100" });'
        );

        # click on 'Note' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketNote;TicketID=$TicketID' )]")->click();

        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple").length;'
        );

        $PopupWindowHeight = $Selenium->execute_script(
            "return \$(window).height();"
        );

        $Self->True(
            $ParentWindowHeight - $PopupWindowHeight,
            "Popup window height (" . $PopupWindowHeight . "px) fits into screen height (" . $ParentWindowHeight . "px), even if defined larger"
        );

        # delete created test tickets
        my $Success = $TicketObject->TicketDelete(
            TicketID => $TicketID,
            UserID   => $TestUserID,
        );
        $Self->True(
            $Success,
            "Delete ticket - $TicketID"
        );

        # make sure the cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
            Type => 'Ticket',
        );

    }
);

1;
