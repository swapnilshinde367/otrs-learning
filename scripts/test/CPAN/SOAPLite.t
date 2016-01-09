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

use SOAP::Lite;

use Kernel::System::VariableCheck qw(:all);

# get needed objects
my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
$Kernel::OM->ObjectParamAdd(
    'Kernel::System::UnitTest::Helper' => {
        RestoreSystemConfiguration => 1,
    },
);
my $HelperObject    = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');

my $RandomID = $HelperObject->GetRandomID();

# define SOAP variables
my $SOAPUser     = 'User' . $RandomID;
my $SOAPPassword = $RandomID;

# update sysconfig settings
$SysConfigObject->ConfigItemUpdate(
    Valid => 1,
    Key   => 'SOAP::User',
    Value => $SOAPUser,
);
$SysConfigObject->ConfigItemUpdate(
    Valid => 1,
    Key   => 'SOAP::Password',
    Value => $SOAPPassword,
);

# get remote host with some precautions for certain unit test systems
my $Host;
my $FQDN = $ConfigObject->Get('FQDN');

# try to resolve fqdn host
if ( $FQDN ne 'yourhost.example.com' && gethostbyname($FQDN) ) {
    $Host = $FQDN;
}

# try to resolve localhost instead
if ( !$Host && gethostbyname('localhost') ) {
    $Host = 'localhost';
}

# use hardcoded localhost ip address
if ( !$Host ) {
    $Host = '127.0.0.1';
}

# prepare RPC config
my $Proxy = $ConfigObject->Get('HttpType')
    . '://'
    . $Host
    . '/'
    . $ConfigObject->Get('ScriptAlias')
    . '/rpc.pl';

my $URI = $ConfigObject->Get('HttpType')
    . '://'
    . $Host
    . '/Core';

# Create SOAP Object and use RPC interface to test SOAP Lite
my $SOAPObject = SOAP::Lite->new(
    proxy => $Proxy,
    uri   => $URI,
);

# ---
# Tests for number of params in SOAP call
# SOAP::Lite 0.715 is broken in line 1993, this file was patched in CPAN directory in order to fix
# this problem. There is a similar problem reported in SOAP::Lite bug tracker in:
# http://sourceforge.net/tracker/?func=detail&aid=3547564&group_id=66000&atid=513017
# ---

my @Tests = (
    {
        Name   => 'TimeObject::SystemTime() - No parameters',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => undef,
    },
    {
        Name   => 'TimeObject::SystemTime() - 1 parameter',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => {
            Param1 => 1,
        },
    },
    {
        Name   => 'TimeObject::SystemTime() - 2 parameters',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => {
            Param1 => 1,
            Param2 => 1,
        },
    },
    {
        Name   => 'TimeObject::SystemTime() - 3 parameters',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => {
            Param1 => 1,
            Param2 => 1,
            Param3 => 1,
        },
    },
    {
        Name   => 'TimeObject::SystemTime() - 4 parameters',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => {
            Param1 => 1,
            Param2 => 1,
            Param3 => 1,
            Param4 => 1,
        },
    },
    {
        Name   => 'TimeObject::SystemTime() - 5 parameters',
        Object => 'TimeObject',
        Method => 'SystemTime',
        Config => {
            Param1 => 1,
            Param2 => 1,
            Param3 => 1,
            Param4 => 1,
            Param5 => 1,
        },
    },
);

for my $Test (@Tests) {

    # send SOAP request
    my $SOAPMessage = $SOAPObject->Dispatch(
        $SOAPUser,
        $SOAPPassword,
        $Test->{Object},
        $Test->{Method},
        %{ $Test->{Config} },
    );

    # get fault from SOAP message if any
    my $FaultString;
    if ( IsHashRefWithData( $SOAPMessage->fault() ) ) {
        $FaultString = $SOAPMessage->fault()->{faultstring};
    }

    # get result form SOAP message if any
    my $Result;
    if ( $SOAPMessage->result() ) {
        $Result = $SOAPMessage->result();
    }

    $Self->Is(
        $FaultString,
        undef,
        "$Test->{Name}: Message fault should be undefined",
    );

    $Self->IsNot(
        $Result,
        undef,
        "$Test->{Name}: Message result should have a value",
    );
}

1;
