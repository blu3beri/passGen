import 'dart:math';

void main() {
  int len = 10;
  String capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '0123456789';
  String specials = '~!"#\$&()*+,-./:;<=>?@';
  String combined = capitals + lowercase + numbers + specials;
  String password = '';

  for (var i = 0; i < len; i++) {
    switch (i) {
      case 0:
      case 1:
        {
          password += getChar(capitals);
        }
        break;
      case 2:
      case 3:
        {
          password += getChar(lowercase);
        }
        break;
      case 4:
      case 5:
        {
          password += getChar(numbers);
        }
        break;
      case 6:
      case 7:
        {
          password += getChar(specials);
        }
        break;
      default:
        {
          password += getChar(combined);
        }
        break;
    }
  }
  print(password);
}

String getChar(String charString) {
  int length = charString.length;
  Random rand = new Random();
  return charString[rand.nextInt(length - 1)];
}
