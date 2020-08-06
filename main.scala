object Main {

	def getChar(charString: String): String = {
		val r = scala.util.Random.nextInt(charString.length());
		return charString.substring(r, r+1);
	}

	def main(args: Array[String]) = {
		val len: Int = 10;
		val capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		val lowercase = "abcdefghijklmnopqrstuvwxyz";
		val numbers = "0123456789";
		val specials = "~!#$%&()*+,-./:;<=>?@";
		val combined =capitals+lowercase+numbers+specials;
		var password = "";

		for( i <- 0 to len) { 
			i match {
                case 0 | 1 => password += getChar(capitals);
                case 2 | 3 => password += getChar(lowercase);
                case 4 | 5 => password += getChar(numbers);
                case 6 | 7 => password += getChar(specials);
                case _ => password += getChar(combined);
            }
		}
		println(password);
	}
}