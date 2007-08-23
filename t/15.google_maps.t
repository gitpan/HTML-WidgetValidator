use Test::Base;
use HTML::WidgetValidator;

sub validate {
  my $validateor = HTML::WidgetValidator->new(widgets => [ 'GoogleMaps' ]);
  my $result  = $validateor->validate(shift);
  return $result ? $result->name : ' ';
}

filters {
    input    => [qw/chomp validate/],
    expected => [qw/chomp/],
};

__END__

=== Google Maps 1
--- input
<iframe width="425" height="350" frameborder="no" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/?ie=UTF8&z=16&om=1&ll=37.371384,-122.086353&output=embed&s=AARTsJqzARj-Z8VnW5pkPMLMmZbqrJcYpw"></iframe>
--- expected
Google Maps

=== Google Maps 2
--- input
<iframe width="425" height="350" frameborder="no" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&hl=ja&geocode=&q=%E6%B8%8B%E8%B0%B7&ie=UTF8&ll=35.66671,139.705582&spn=0.006939,0.014591&z=14&iwloc=addr&om=1&output=embed&s=AARTsJoPYtZh3xfr6tziFXtC1r8XJ8oT_A"></iframe>
--- expected
Google Maps
