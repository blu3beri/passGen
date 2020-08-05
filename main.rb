def getChar(charString)
    r = rand(charString.length)
    return charString[r]
end

def main
    Integer len = 10
    String capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    String lowercase = "abcdefghijklmnopqrstuvwxyz"
    String numbers = "0123456789"
    String specials = "~!#$&()*+,-./:;<=>?@"
    String combined = capitals + lowercase + numbers + specials
    String password = ""
    
    for i in 1...len
        case i
        when 0, 1
            password += getChar(capitals)
        when 2, 3
            password += getChar(lowercase)
        when 4, 5
            password += getChar(numbers)
        when 6, 7
            password += getChar(specials)
        else
            password += getChar(combined)
        end
    end
    puts password
end

main