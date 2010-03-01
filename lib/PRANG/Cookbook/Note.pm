
package PRANG::Cookbook::Note;

use Moose;
use MooseX::Method::Signatures;
use PRANG::Graph;

# attributes
# none

# elements
has_element 'from' =>
	xml_nodeName => 'from',
	is => 'rw',
	isa => 'Str',
	xml_required => 1,
	;

has_element 'to' =>
	xml_nodeName => 'to',
	is => 'rw',
	isa => 'Str',
	xml_required => 1,
	;

has_element 'subject' =>
	xml_nodeName => 'subject',
	is => 'rw',
	isa => 'Str',
	xml_required => 1,
	;

has_element 'body' =>
	xml_nodeName => 'body',
	is => 'rw',
	isa => 'Str',
	required => 0,
	xml_required => 0,
	;

sub root_element { 'note' }
with 'PRANG::Cookbook';

1;
