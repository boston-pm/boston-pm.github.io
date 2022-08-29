sub canon {
	my $v=shift;
	$v =~ s/\W//; # remove non-word chars
	join '', sort split '', lc $v # Must lc before sort
}

sub subtract { # letter sequences
	my ($longer, $shorter)=(@_);
	my $difference=$longer;
	foreach my $c (split '', $shorter) {
		$difference =~ s/$c//
				 
	  ## Does NOT check for propersubset as original did	
	}
return $difference;
}

sub adjacent_pattern {
   my $input=shift;
   return join '|', map {my $x=$input; substr($x,$_,1)=q{.};$x} 0 .. length($input)-1;
}

1; # Return true like every good module

