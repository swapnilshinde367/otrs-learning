# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZAuto;
use strict;
use warnings;
no warnings 'redefine';
use utf8;
sub Load {
    my ($File, $Self) = @_;
$Self->{'SystemID'} = '63';
$Self->{'FQDN'} = 'ubuntu';
$Self->{'AdminEmail'} = 'admin@example.com';
$Self->{'Organization'} = 'Example Company';
$Self->{'LogModule'} = 'Kernel::System::Log::SysLog';
$Self->{'LogModule::LogFile'} = '/tmp/otrs.log';
$Self->{'DefaultLanguage'} = 'en';
$Self->{'CheckMXRecord'} = '1';
$Self->{'SecureMode'} = 1;
}
1;
