func getChar(charString: String) -> Character {
    let r = Int.random(in: 1..<charString.count);
    let index = charString.index(charString.startIndex, offsetBy: r);
    return charString[index];
}

func main() {
    let len = 10;
    let capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let lowercase = "abcdefghijklmnopqrstuvwxyz";
    let numbers = "0123456789";
    let specials = "~!#$%&()*+,-./:;<=>?@";
    let combined = capitals+lowercase+numbers+specials;
    var password = "";

    for i in 0...len {
        switch i {
            case 0,1:
                password += String(getChar(charString: capitals));
            case 2,3:
                password += String(getChar(charString: lowercase));
            case 4,5:
                password += String(getChar(charString: numbers));
            case 6,7:
                password += String(getChar(charString: specials));
            default:
                password += String(getChar(charString: combined));
        }
    }
    print(password)
}

main()