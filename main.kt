fun getChar(charString: String): String {
    val r = (0..charString.length).random()
    return charString.substring(r, r+1);
}

fun main(args: Array<String>) {
	val len: Int = 10;
	val capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	val lowercase = "abcdefghijklmnopqrstuvwxyz";
	val numbers = "0123456789";
	val specials = "~!#$%&()*+,-./:;<=>?@";
	val combined =capitals+lowercase+numbers+specials;
	var password = "";
    
    for (i in 0..len) {
        when (i) {
            0, 1 -> password += getChar(capitals);
            2, 3 -> password += getChar(lowercase);
            4, 5 -> password += getChar(numbers);
            6, 7 -> password += getChar(specials);
            else -> password += getChar(combined);
        }
    }
    println(password);
}
