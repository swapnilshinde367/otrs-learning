# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::LinkObject::Ticket;

use strict;
use warnings;

use Kernel::Output::HTML::Layout;

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::Log',
    'Kernel::System::Priority',
    'Kernel::System::State',
    'Kernel::System::Type',
    'Kernel::System::Web::Request',
);

=head1 NAME

Kernel::Output::HTML::LinkObject::Ticket - layout backend module

=head1 SYNOPSIS

All layout functions of link object (ticket).

=over 4

=cut

=item new()

create an object

    $BackendObject = Kernel::Output::HTML::LinkObject::Ticket->new(
        UserLanguage => 'en',
        UserID       => 1,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (qw(UserLanguage UserID)) {
        $Self->{$Needed} = $Param{$Needed} || die "Got no $Needed!";
    }

    # We need our own LayoutObject instance to avoid block data collisions
    #   with the main page.
    $Self->{LayoutObject} = Kernel::Output::HTML::Layout->new( %{$Self} );

    # define needed variables
    $Self->{ObjectData} = {
        Object   => 'Ticket',
        Realname => 'Ticket',
    };

    return $Self;
}

=item TableCreateComplex()

return an array with the block data

Return

    %BlockData = (
        {
            Object    => 'Ticket',
            Blockname => 'Ticket',
            Headline  => [
                {
                    Content => 'Number#',
                    Width   => 130,
                },
                {
                    Content => 'Title',
                },
                {
                    Content => 'Created',
                    Width   => 110,
                },
            ],
            ItemList => [
                [
                    {
                        Type     => 'Link',
                        Key      => $TicketID,
                        Content  => '123123123',
                        CssClass => 'StrikeThrough',
                    },
                    {
                        Type      => 'Text',
                        Content   => 'The title',
                        MaxLength => 50,
                    },
                    {
                        Type    => 'TimeLong',
                        Content => '2008-01-01 12:12:00',
                    },
                ],
                [
                    {
                        Type    => 'Link',
                        Key     => $TicketID,
                        Content => '434234',
                    },
                    {
                        Type      => 'Text',
                        Content   => 'The title of ticket 2',
                        MaxLength => 50,
                    },
                    {
                        Type    => 'TimeLong',
                        Content => '2008-01-01 12:12:00',
                    },
                ],
            ],
        },
    );

    @BlockData = $BackendObject->TableCreateComplex(
        ObjectLinkListWithData => $ObjectLinkListRef,
    );

=cut

sub TableCreateComplex {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ObjectLinkListWithData} || ref $Param{ObjectLinkListWithData} ne 'HASH' ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ObjectLinkListWithData!',
        );
        return;
    }

    # convert the list
    my %LinkList;
    for my $LinkType ( sort keys %{ $Param{ObjectLinkListWithData} } ) {

        # extract link type List
        my $LinkTypeList = $Param{ObjectLinkListWithData}->{$LinkType};

        for my $Direction ( sort keys %{$LinkTypeList} ) {

            # extract direction list
            my $DirectionList = $Param{ObjectLinkListWithData}->{$LinkType}->{$Direction};

            for my $TicketID ( sort keys %{$DirectionList} ) {

                $LinkList{$TicketID}->{Data} = $DirectionList->{$TicketID};
            }
        }
    }

    # create the item list
    my @ItemList;
    for my $TicketID (
        sort { $LinkList{$a}{Data}->{Age} <=> $LinkList{$b}{Data}->{Age} }
        keys %LinkList
        )
    {

        # extract ticket data
        my $Ticket = $LinkList{$TicketID}{Data};

        # set css
        my $CssClass;
        if ( $Ticket->{StateType} eq 'merged' ) {
            $CssClass = 'StrikeThrough';
        }

        my @ItemColumns = (
            {
                Type    => 'Link',
                Key     => $TicketID,
                Content => $Ticket->{TicketNumber},
                Link    => $Self->{LayoutObject}->{Baselink}
                    . 'Action=AgentTicketZoom;TicketID='
                    . $TicketID,
                Title    => "Ticket# $Ticket->{TicketNumber}",
                CssClass => $CssClass,
            },
            {
                Type      => 'Text',
                Content   => $Ticket->{Title},
                MaxLength => $Kernel::OM->Get('Kernel::Config')->Get('Ticket::SubjectSize') || 50,
            },
            {
                Type    => 'Text',
                Content => $Ticket->{Queue},
            },
            {
                Type      => 'Text',
                Content   => $Ticket->{State},
                Translate => 1,
            },
            {
                Type    => 'TimeLong',
                Content => $Ticket->{Created},
            },
        );

        push @ItemList, \@ItemColumns;
    }

    return if !@ItemList;

    # define the block data
    my $TicketHook = $Kernel::OM->Get('Kernel::Config')->Get('Ticket::Hook');
    my %Block      = (
        Object    => $Self->{ObjectData}->{Object},
        Blockname => $Self->{ObjectData}->{Realname},
        Headline  => [
            {
                Content => $TicketHook,
                Width   => 130,
            },
            {
                Content => 'Title',
            },
            {
                Content => 'Queue',
                Width   => 100,
            },
            {
                Content => 'State',
                Width   => 110,
            },
            {
                Content => 'Created',
                Width   => 130,
            },
        ],
        ItemList => \@ItemList,
    );

    return ( \%Block );
}

=item TableCreateSimple()

return a hash with the link output data

Return

    %LinkOutputData = (
        Normal::Source => {
            Ticket => [
                {
                    Type     => 'Link',
                    Content  => 'T:55555',
                    Title    => 'Ticket#555555: The ticket title',
                    CssClass => 'StrikeThrough',
                },
                {
                    Type    => 'Link',
                    Content => 'T:22222',
                    Title   => 'Ticket#22222: Title of ticket 22222',
                },
            ],
        },
        ParentChild::Target => {
            Ticket => [
                {
                    Type    => 'Link',
                    Content => 'T:77777',
                    Title   => 'Ticket#77777: Ticket title',
                },
            ],
        },
    );

    %LinkOutputData = $BackendObject->TableCreateSimple(
        ObjectLinkListWithData => $ObjectLinkListRef,
    );

=cut

sub TableCreateSimple {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ObjectLinkListWithData} || ref $Param{ObjectLinkListWithData} ne 'HASH' ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ObjectLinkListWithData!'
        );
        return;
    }

    my $TicketHook = $Kernel::OM->Get('Kernel::Config')->Get('Ticket::Hook');
    my %LinkOutputData;
    for my $LinkType ( sort keys %{ $Param{ObjectLinkListWithData} } ) {

        # extract link type List
        my $LinkTypeList = $Param{ObjectLinkListWithData}->{$LinkType};

        for my $Direction ( sort keys %{$LinkTypeList} ) {

            # extract direction list
            my $DirectionList = $Param{ObjectLinkListWithData}->{$LinkType}->{$Direction};

            my @ItemList;
            for my $TicketID ( sort { $a <=> $b } keys %{$DirectionList} ) {

                # extract ticket data
                my $Ticket = $DirectionList->{$TicketID};

                # set css
                my $CssClass;
                if ( $Ticket->{StateType} eq 'merged' ) {
                    $CssClass = 'StrikeThrough';
                }

                # define item data
                my %Item = (
                    Type    => 'Link',
                    Content => 'T:' . $Ticket->{TicketNumber},
                    Title   => "$TicketHook$Ticket->{TicketNumber}: $Ticket->{Title}",
                    Link    => $Self->{LayoutObject}->{Baselink}
                        . 'Action=AgentTicketZoom;TicketID='
                        . $TicketID,
                    CssClass => $CssClass,
                );

                push @ItemList, \%Item;
            }

            # add item list to link output data
            $LinkOutputData{ $LinkType . '::' . $Direction }->{Ticket} = \@ItemList;
        }
    }

    return %LinkOutputData;
}

=item ContentStringCreate()

return a output string

    my $String = $LayoutObject->ContentStringCreate(
        ContentData => $HashRef,
    );

=cut

sub ContentStringCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ContentData} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ContentData!'
        );
        return;
    }

    return;
}

=item SelectableObjectList()

return an array hash with selectable objects

Return

    @SelectableObjectList = (
        {
            Key   => 'Ticket',
            Value => 'Ticket',
        },
    );

    @SelectableObjectList = $BackendObject->SelectableObjectList(
        Selected => $Identifier,  # (optional)
    );

=cut

sub SelectableObjectList {
    my ( $Self, %Param ) = @_;

    my $Selected;
    if ( $Param{Selected} && $Param{Selected} eq $Self->{ObjectData}->{Object} ) {
        $Selected = 1;
    }

    # object select list
    my @ObjectSelectList = (
        {
            Key      => $Self->{ObjectData}->{Object},
            Value    => $Self->{ObjectData}->{Realname},
            Selected => $Selected,
        },
    );

    return @ObjectSelectList;
}

=item SearchOptionList()

return an array hash with search options

Return

    @SearchOptionList = (
        {
            Key       => 'TicketNumber',
            Name      => 'Ticket#',
            InputStrg => $FormString,
            FormData  => '1234',
        },
        {
            Key       => 'Title',
            Name      => 'Title',
            InputStrg => $FormString,
            FormData  => 'BlaBla',
        },
    );

    @SearchOptionList = $BackendObject->SearchOptionList(
        SubObject => 'Bla',  # (optional)
    );

=cut

sub SearchOptionList {
    my ( $Self, %Param ) = @_;

    my $ParamHook = $Kernel::OM->Get('Kernel::Config')->Get('Ticket::Hook') || 'Ticket#';

    # search option list
    my @SearchOptionList = (
        {
            Key  => 'TicketNumber',
            Name => $ParamHook,
            Type => 'Text',
        },
        {
            Key  => 'Title',
            Name => 'Title',
            Type => 'Text',
        },
        {
            Key  => 'TicketFulltext',
            Name => 'Fulltext',
            Type => 'Text',
        },
        {
            Key  => 'StateIDs',
            Name => 'State',
            Type => 'List',
        },
        {
            Key  => 'PriorityIDs',
            Name => 'Priority',
            Type => 'List',
        },
    );

    if ( $Kernel::OM->Get('Kernel::Config')->Get('Ticket::Type') ) {
        push @SearchOptionList,
            {
            Key  => 'TypeIDs',
            Name => 'Type',
            Type => 'List',
            };
    }

    # add formkey
    for my $Row (@SearchOptionList) {
        $Row->{FormKey} = 'SEARCH::' . $Row->{Key};
    }

    # add form data and input string
    ROW:
    for my $Row (@SearchOptionList) {

        # prepare text input fields
        if ( $Row->{Type} eq 'Text' ) {

            # get form data
            $Row->{FormData} = $Kernel::OM->Get('Kernel::System::Web::Request')->GetParam( Param => $Row->{FormKey} );

            # parse the input text block
            $Self->{LayoutObject}->Block(
                Name => 'InputText',
                Data => {
                    Key   => $Row->{FormKey},
                    Value => $Row->{FormData} || '',
                },
            );

            # add the input string
            $Row->{InputStrg} = $Self->{LayoutObject}->Output(
                TemplateFile => 'LinkObject',
            );

            next ROW;
        }

        # prepare list boxes
        if ( $Row->{Type} eq 'List' ) {

            # get form data
            my @FormData = $Kernel::OM->Get('Kernel::System::Web::Request')->GetArray( Param => $Row->{FormKey} );
            $Row->{FormData} = \@FormData;

            my %ListData;
            if ( $Row->{Key} eq 'StateIDs' ) {
                %ListData = $Kernel::OM->Get('Kernel::System::State')->StateList(
                    UserID => $Self->{UserID},
                );
            }
            elsif ( $Row->{Key} eq 'PriorityIDs' ) {
                %ListData = $Kernel::OM->Get('Kernel::System::Priority')->PriorityList(
                    UserID => $Self->{UserID},
                );
            }
            elsif ( $Row->{Key} eq 'TypeIDs' ) {
                %ListData = $Kernel::OM->Get('Kernel::System::Type')->TypeList(
                    UserID => $Self->{UserID},
                );
            }

            # add the input string
            $Row->{InputStrg} = $Self->{LayoutObject}->BuildSelection(
                Data       => \%ListData,
                Name       => $Row->{FormKey},
                SelectedID => $Row->{FormData},
                Size       => 3,
                Multiple   => 1,
                Class      => 'Modernize',
            );

            next ROW;
        }
    }

    return @SearchOptionList;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut
