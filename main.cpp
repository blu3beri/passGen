#include <iostream>
#include <string>
#include <stdlib.h>
#include <time.h> 
using namespace std;

char getChar(string charString) {
    int r = rand() % charString.length();
    return charString.at(r);
}

int main() {
    srand(time(NULL));

    int len = 10;
    string capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    string lowercase = "abcdefghijklmnopqrstuvwxyz";
    string numbers = "0123456789";
    string specials = "~!#$&()*+,-./:;<=>?@";
    string combined = capitals + lowercase + numbers + specials;
    string password;
    for (int i=0; i < len; i++) {
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
        case 9:
            break;
        default:
            password += getChar(combined);
            break;
        }
    }
    std::cout << password << endl;
    return 0;
}