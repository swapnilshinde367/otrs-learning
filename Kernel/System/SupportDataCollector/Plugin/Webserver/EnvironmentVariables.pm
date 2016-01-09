# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::SupportDataCollector::Plugin::Webserver::EnvironmentVariables;

use strict;
use warnings;

use base qw(Kernel::System::SupportDataCollector::PluginBase);

use Kernel::Language qw(Translatable);

our @ObjectDependencies = ();

sub GetDisplayPath {
    return Translatable('Webserver/Environment Variables');
}

sub Run {
    my $Self = shift;

    my %Environment = %ENV;

    for my $NotNeededString (
        qw(
        HTTP_REFERER HTTP_CACHE_CONTROL HTTP_COOKIE HTTP_USER_AGENT
        HTTP_ACCEPT_LANGUAGE HTTP_ACCEPT_ENCODING HTTP_ACCEPT
        QUERY_STRING REQUEST_METHOD REQUEST_URI SCRIPT_NAME
        ALLUSERSPROFILE      APPDATA              LOCALAPPDATA   COMMONPROGRAMFILES
        PROGRAMDATA          PROGRAMFILES         PSMODULEPATH   PUBLIC
        SYSTEMDRIVE          SYSTEMROOT           TEMP           WINDIR
        USERPROFILE          REMOTE_PORT
        )
        )
    {
        delete $Environment{$NotNeededString};
    }

    my @Result;

    for my $Variable ( sort { $a cmp $b } keys %Environment ) {
        $Self->AddResultInformation(
            Identifier => $Variable,
            Label      => $Variable,
            Value      => $Environment{$Variable},
        );
    }

    return $Self->GetResults();
}

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

1;
