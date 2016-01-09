# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::CSV;

use strict;
use warnings;

use Text::CSV;
use Excel::Writer::XLSX;

our @ObjectDependencies = (
    'Kernel::System::Log',
);

=head1 NAME

Kernel::System::CSV - CSV lib

=head1 SYNOPSIS

All csv functions.

=head1 PUBLIC INTERFACE

=over 4

=item new()

create an object. Do not use it directly, instead use:

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CSVObject = $Kernel::OM->Get('Kernel::System::CSV');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=item Array2CSV()

Returns a csv formatted string based on a array with head data.

    $CSV = $CSVObject->Array2CSV(
        Head => [ 'RowA', 'RowB', ],   # optional
        Data => [
            [ 1, 4 ],
            [ 7, 3 ],
            [ 1, 9 ],
            [ 34, 4 ],
        ],
        Separator => ';',  # optional separator (default is ;)
        Quote     => '"',  # optional quote (default is ")
        Format    => 'CSV', # optional format [Excel|CSV ] (default is CSV)
    );

=cut

sub Array2CSV {
    my ( $Self, %Param ) = @_;

    # check required params
    for (qw(Data)) {
        if ( !$Param{$_} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Got no $_ param!"
            );
            return;
        }
    }

    my @Head;
    my @Data = ( ['##No Data##'] );
    if ( $Param{Head} ) {
        @Head = @{ $Param{Head} };
    }
    if ( $Param{Data} ) {
        @Data = @{ $Param{Data} };
    }

    # get format
    $Param{Format} //= 'CSV';

    my $Output = '';

    if ( $Param{Format} eq 'Excel' ) {

        open my $FileHandle, '>', \$Output;    ## no critic
        if ( !$FileHandle ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Failed to open FileHandle: $!",
            );
            return;
        }
        my $Workbook     = Excel::Writer::XLSX->new($FileHandle);
        my $Worksheet    = $Workbook->add_worksheet();
        my $HeaderFormat = $Workbook->add_format(
            bold       => 1,
            num_format => '@',
        );

        # We will try to determine the appropriate length for each column.
        my @ColumnLengths;
        my $Row = 0;
        for my $DataRaw ( \@Head, @Data ) {
            COL:
            for my $Col ( 0 .. ( scalar @{ $DataRaw // [] } ) - 1 ) {
                next COL if !defined( $DataRaw->[$Col] );
                my $CellLength = length( $DataRaw->[$Col] );
                $CellLength = 30 if ( $CellLength > 30 );
                if ( !defined $ColumnLengths[$Col] || $ColumnLengths[$Col] < $CellLength ) {
                    $ColumnLengths[$Col] = $CellLength;
                }
                if ( $Row == 0 && @Head ) {

                    # Format header nicely if present.
                    $Worksheet->write( $Row, $Col, "$DataRaw->[$Col]", $HeaderFormat );
                }
                else {
                    # There are major problems with data recognition in Excel. OTRS
                    #   ticket numbers will be recognized as numbers, but they are so big that
                    #   Excel will (incorrectly) round them. Prevent this by using write_string()
                    #   to protect the data. This might trigger formatting notifications in Excel,
                    #   but these can be turned off.
                    $Worksheet->write_string( $Row, $Col, "$DataRaw->[$Col]" );
                }
            }
            $Row++;
        }

        # Now apply column lengths.
        my $Col = 0;
        for my $ColumnLength (@ColumnLengths) {
            $Worksheet->set_column( $Col, $Col, $ColumnLength );
            $Col++;
        }

        $Workbook->close();
    }
    else {
        # get separator
        if ( !defined $Param{Separator} || $Param{Separator} eq '' ) {
            $Param{Separator} = ';';
        }

        # get separator
        if ( !defined $Param{Quote} ) {
            $Param{Quote} = '"';
        }

        # create new csv backend object
        my $CSV = Text::CSV->new(
            {
                quote_char          => $Param{Quote},
                escape_char         => $Param{Quote},
                sep_char            => $Param{Separator},
                eol                 => '',
                always_quote        => 1,
                binary              => 1,
                keep_meta_info      => 0,
                allow_loose_quotes  => 0,
                allow_loose_escapes => 0,
                allow_whitespace    => 0,
                verbatim            => 0,
            }
        );

        # if we have head param fill in header
        if (@Head) {
            my $Status = $CSV->combine(@Head);
            $Output .= $CSV->string() . "\n";
        }

        # fill in data
        for my $Row (@Data) {
            my $Status = $CSV->combine( @{$Row} );
            if ($Status) {
                $Output .= $CSV->string() . "\n";
            }
            else {
                $Kernel::OM->Get('Kernel::System::Log')->Log(
                    Priority => 'error',
                    Message  => 'Failed to build line: ' . $CSV->error_input(),
                );
            }
        }

    }

    return $Output;
}

=item CSV2Array()

Returns an array with parsed csv data.

    my $RefArray = $CSVObject->CSV2Array(
        String    => $CSVString,
        Separator => ';', # optional separator (default is ;)
        Quote     => '"', # optional quote (default is ")
    );

=cut

sub CSV2Array {
    my ( $Self, %Param ) = @_;

    # get separator
    if ( !defined $Param{Separator} || $Param{Separator} eq '' ) {
        $Param{Separator} = ';';
    }

    # get separator
    if ( !defined $Param{Quote} ) {
        $Param{Quote} = '"';
    }

    # create new csv backend object
    my $CSV = Text::CSV->new(
        {

            #            quote_char          => $Param{Quote},
            #            escape_char         => $Param{Quote},
            sep_char            => $Param{Separator},
            eol                 => '',
            always_quote        => 0,
            binary              => 1,
            keep_meta_info      => 0,
            allow_loose_quotes  => 0,
            allow_loose_escapes => 0,
            allow_whitespace    => 0,
            verbatim            => 0,
        }
    );

    # do some dos/unix file conversions
    $Param{String} =~ s/(\n\r|\r\r\n|\r\n|\r)/\n/g;

    # if you change the split options, remember that each value can include \n
    my @Array;
    my @Lines = split /$Param{Quote}\n/, $Param{String};
    for my $Line (@Lines) {
        if ( $CSV->parse( $Line . $Param{Quote} ) ) {
            my @Fields = $CSV->fields();
            push @Array, \@Fields;
        }
        else {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => 'Failed to parse line: ' . $CSV->error_input(),
            );
        }
    }

    return \@Array;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut
