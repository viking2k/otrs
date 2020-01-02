#!/usr/bin/perl
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

use strict;
use warnings;

# use ../../ as lib location
use FindBin qw($Bin);
use lib "$Bin/../..";
use lib "$Bin/../../Kernel/cpan-lib";
use lib "$Bin/../../Custom";

# Imports the library; required line
use CGI::Fast;

# load agent web interface
use Kernel::System::Web::InterfaceInstaller();

# 0=off;1=on;
my $Debug = 0;

#my $Cnt = 0;

# Response loop
while ( my $WebRequest = new CGI::Fast ) {

    # create new object
    my $Interface = Kernel::System::Web::InterfaceInstaller->new(
        Debug      => $Debug,
        WebRequest => $WebRequest
    );

    # execute object
    $Interface->Run();

    #    $Cnt++;
    #    print STDERR "This is connection number $Cnt\n";
}
