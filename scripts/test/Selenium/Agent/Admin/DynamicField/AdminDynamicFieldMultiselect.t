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

# get needed objects
my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
my $Selenium     = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => ['admin'],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $ConfigObject->Get('ScriptAlias');

        $Selenium->get("${ScriptAlias}index.pl?Action=AdminDynamicField");

        # create and edit Ticket and Article DynamicFieldMultiselect
        for my $Type (qw(Ticket Article)) {

            my $ObjectType = $Type . "DynamicField";
            $Selenium->execute_script(
                "\$('#$ObjectType').val('Dropdown').trigger('redraw.InputField').trigger('change');"
            );

            # wait until page has finished loading
            $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("#Name").length' );

            for my $ID (
                qw(Name Label FieldOrder ValidID DefaultValue AddValue PossibleNone TreeView TranslatableValues)
                )
            {
                my $Element = $Selenium->find_element( "#$ID", 'css' );
                $Element->is_enabled();
                $Element->is_displayed();
            }

            # check client side validation
            my $Element2 = $Selenium->find_element( "#Name", 'css' );
            $Element2->send_keys("");
            $Element2->submit();

            # wait until page has loaded, if neccessary
            $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("body").length' );

            $Self->Is(
                $Selenium->execute_script(
                    "return \$('#Name').hasClass('Error')"
                ),
                '1',
                'Client side validation correctly detected missing input value',
            );

            # create real text DynamicFieldMultiselect
            my $RandomID = $Helper->GetRandomID();

            $Selenium->find_element( "#Name",     'css' )->send_keys($RandomID);
            $Selenium->find_element( "#Label",    'css' )->send_keys($RandomID);
            $Selenium->find_element( "#AddValue", 'css' )->click();
            $Selenium->find_element( "#Key_1",    'css' )->send_keys("Key1");
            $Selenium->find_element( "#Value_1",  'css' )->send_keys("Value1");

            # check default value
            $Self->Is(
                $Selenium->find_element( "#DefaultValue option[value='Key1']", 'css' )->get_value(),
                'Key1',
                "Key1 is possible #DefaultValue",
            );

            # add another possible value
            $Selenium->find_element( "#AddValue", 'css' )->click();
            $Selenium->find_element( "#Key_2",    'css' )->send_keys("Key2");
            $Selenium->find_element( "#Value_2",  'css' )->send_keys("Value2");

            # check default value
            $Self->Is(
                $Selenium->find_element( "#DefaultValue option[value='Key2']", 'css' )->get_value(),
                'Key2',
                "Key2 is possible #DefaultValue",
            );

            $Selenium->find_element( "#Name", 'css' )->submit();

            # wait to load overview screen
            $Selenium->WaitFor(
                JavaScript => "return typeof(\$) === 'function' && \$('.DynamicFieldsContent').length"
            );

            # check for test DynamicFieldMultiselect on AdminDynamicField screen
            $Self->True(
                index( $Selenium->get_page_source(), $RandomID ) > -1,
                "DynamicFieldMultiselect $RandomID found on table"
            ) || die;

            # edit test DynamicFieldMultiselect possiblenone, default value, treeview and set it to invalid
            $Selenium->find_element( $RandomID, 'link_text' )->click();

            $Selenium->execute_script(
                "\$('#DefaultValue').val('Key1').trigger('redraw.InputField').trigger('change');"
            );
            $Selenium->execute_script("\$('#PossibleNone').val('1').trigger('redraw.InputField').trigger('change');");
            $Selenium->execute_script("\$('#TreeView').val('1').trigger('redraw.InputField').trigger('change');");
            $Selenium->execute_script("\$('#ValidID').val('2').trigger('redraw.InputField').trigger('change');");
            $Selenium->find_element( "#Name", 'css' )->submit();

            # wait until page has loaded, if neccessary
            $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("body").length' );

            # check new and edited DynamicFieldMultiselect values
            $Selenium->find_element( $RandomID, 'link_text' )->click();

            # wait until page has loaded, if neccessary
            $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("#Name").length' );

            $Self->Is(
                $Selenium->find_element( '#Name', 'css' )->get_value(),
                $RandomID,
                "#Name updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#Label', 'css' )->get_value(),
                $RandomID,
                "#Label updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#Key_1', 'css' )->get_value(),
                "Key1",
                "#Key_1 possible updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#Value_1', 'css' )->get_value(),
                "Value1",
                "#Value_1 possible updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#Key_2', 'css' )->get_value(),
                "Key2",
                "#Key_2 possible updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#Value_2', 'css' )->get_value(),
                "Value2",
                "#Value_2 possible updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#DefaultValue', 'css' )->get_value(),
                "Key1",
                "#DefaultValue updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#PossibleNone', 'css' )->get_value(),
                1,
                "#PossibleNone updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#TreeView', 'css' )->get_value(),
                1,
                "#TreeView updated value",
            );
            $Self->Is(
                $Selenium->find_element( '#ValidID', 'css' )->get_value(),
                2,
                "#ValidID updated value",
            );

            # go back to AdminDynamicField screen
            $Selenium->get("${ScriptAlias}index.pl?Action=AdminDynamicField");

            # wait until page has loaded, if neccessary
            $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("body").length' );

            # delete DynamicFields
            my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');
            my $DynamicField       = $DynamicFieldObject->DynamicFieldGet(
                Name => $RandomID,
            );
            my $Success = $DynamicFieldObject->DynamicFieldDelete(
                ID     => $DynamicField->{ID},
                UserID => 1,
            );

            # sanity check
            $Self->True(
                $Success,
                "DynamicFieldDelete() - $RandomID"
            );

        }

        # make sure cache is correct
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => "DynamicField" );

    }

);

1;
