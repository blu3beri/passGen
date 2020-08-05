import java.util.Random;

public class main {

  private static char getChar(String charString) {
    Random rand = new Random();
    int r = rand.nextInt(charString.length());
    return charString.charAt(r);
  }

  public static void main(String[] args) {
    final int len = 10;
    final String capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    final String lowercase = "abcdefghijklmnopqrstuvwxyz";
    final String numbers = "0123456789";
    final String specials = "~!#$&()*+,-./:;<=>?@";
    final String combined = capitals + lowercase + numbers + specials;
    String password = "";

    for (int i = 0; i < len; i++) {
      switch (i) {
        case 0:
        case 1:
          password += getChar(capitals);
          break;
        case 2:
        case 3:
          password += getChar(lowercase);
          break;
        case 4:
        case 5:
          password += getChar(numbers);
          break;
        case 6:
        case 7:
          password += getChar(specials);
          break;
        default:
          password += getChar(combined);
          break;
      }
    }

    System.out.println(password);
  }
}