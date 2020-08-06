#import <Foundation/Foundation.h>
#include <stdlib.h>

@interface PassGen:NSObject

- (NSString*)getChar:(NSString*)charString;

@end

@implementation PassGen

- (NSString*)getChar:(NSString*)charString {
    int r = arc4random_uniform([charString length]);
    return [charString substringWithRange:NSMakeRange(r, 1)];
}

@end

int main () {
    int len = 10;
    NSString* capitals = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSString* lowercase = @"abcdefghijklmnopqrstuvwxyz";
    NSString* numbers = @"0123456789";
    NSString* specials = @"~!#$&()*+,-./:;<=>?@";
    NSString* combined = [capitals stringByAppendingString:lowercase];
    combined = [combined stringByAppendingString:numbers];
    combined = [combined stringByAppendingString:specials];
    NSString *password = [NSString new];
   
    PassGen *passGen = [[PassGen alloc]init];
    // [passGen getChar:capitals];


    for (int i = 0; i < len; i++) {
        switch (i) {
            case 0:
            case 1:
                password = [password stringByAppendingString:[passGen getChar:capitals]];
                break;
            case 2:
            case 3:
                password = [password stringByAppendingString:[passGen getChar:lowercase]];
                break;
            case 4:
            case 5:
                password = [password stringByAppendingString:[passGen getChar:numbers]];
                break;
            case 6:
            case 7:
                password = [password stringByAppendingString:[passGen getChar:specials]];
                break;
            default:
                password = [password stringByAppendingString:[passGen getChar:combined]];
                break;
        }
    }
 
    printf("%s\n", [password UTF8String]);
    return 0;
}