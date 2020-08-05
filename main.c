#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

char getChar(char charString[1000]) {
    int r = rand() % strlen(charString);
    return charString[r];
}
int main() {
    srand(time(NULL));
    int len = 10;
    char capitals[1000] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char lowercase[1000] = "abcdefghijklmnopqrstuvwxyz";
    char numbers[1000] = "0123456789";
    char specials[1000] = "~!#$&()*+,-./:;<=>?@";
    char combined[1000] = "";
    char password[1000] = "";
    char buff[1000];
    strcat(combined, capitals);
    strcat(combined, lowercase);
    strcat(combined, numbers);
    strcat(combined, specials);

    for (int i=0; i < len; i++) {
        switch (i) {
        case 0:
            printf("%c", getChar(capitals));
            break;
        case 1:
            printf("%c", getChar(capitals));
            break;
        case 2:
            printf("%c", getChar(lowercase));
            break;
        case 3:
            printf("%c", getChar(lowercase));
            break;
        case 4:
            printf("%c", getChar(numbers));
            break;
        case 5:
            printf("%c", getChar(numbers));
            break;
        case 6:
            printf("%c", getChar(specials));
            break;
        case 7:
            printf("%c", getChar(specials));
            break;
        case 9:
            printf("\n");
            break;
        default:
            printf("%c", getChar(combined));
            break;
        }
    }
    return 0;
}