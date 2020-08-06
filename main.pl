sub getChar 
{
	$r = int(rand(length $_[0]));
	return substr $_[0], $r, 1;
}

sub main 
{
	$len = 10;
	$capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	$lowercase = "abcdefghijklmnopqrstuvwxyz";
	$numbers = "0123456789";
	$specials = "~!#$%&()*+,-./:;<=>?@";
	$combined = capitals.lowercase.numbers.specials;
	$password = "";

	for (my $i=0; $i < $len; $i++) 
	{
		if($i == 0 || $i == 1 ) 
		{
			$password = $password.getChar($capitals);
		} elsif($i == 2 || $i == 3 ) 
		{
			$password = $password.getChar($lowercase);
		} elsif($i == 4 || $i == 5 ) 
		{
			$password = $password.getChar($numbers);
		} elsif($i == 6 || $i == 7 ) 
		{
			$password = $password.getChar($specials);
		} else {
			$password = $password.getChar($combined);
		}
	}
	print $password."\n"
}

main();
