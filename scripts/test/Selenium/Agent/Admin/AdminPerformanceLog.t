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
my $ConfigObject    = $Kernel::OM->Get('Kernel::Config');
my $DBObject        = $Kernel::OM->Get('Kernel::System::DB');
my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');
my $Selenium        = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get helper object
        $Kernel::OM->ObjectParamAdd(
            'Kernel::System::UnitTest::Helper' => {
                RestoreSystemConfiguration => 1,
            },
        );
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        # enable PerformanceLog
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'PerformanceLog',
            Value => 1
        );

        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => ['admin'],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $ConfigObject->Get('ScriptAlias');

        $Selenium->get("${ScriptAlias}index.pl?Action=AdminPerformanceLog");

        $Selenium->WaitFor( JavaScript => "return typeof(\$) === 'function' && \$('body').length" );

        # check for Admin on different range time screens
        for my $Time (
            qw(5 30 60 120 1440 2880)
            )
        {
            # click on Admin
            $Selenium->find_element("//a[contains(\@href, \'Interface=Agent;Minute=$Time' )]")->click();

            $Selenium->WaitFor( JavaScript => "return typeof(\$) === 'function' && \$('table').length" );

            # check screen layout
            $Selenium->find_element( "table",             'css' );
            $Selenium->find_element( "table thead tr th", 'css' );
            $Selenium->find_element( "table tbody tr td", 'css' );
            $Selenium->find_element( "div.Progressbar",   'css' )->is_displayed();

            # click on "Go to overview"
            $Selenium->find_element("//a[contains(\@href, \'Action=AdminPerformanceLog' )]")->click();

            $Selenium->WaitFor( JavaScript => "return typeof(\$) === 'function' && \$('body').length" );
        }

    }

);

1;
