//
//  main.m
//  someobjc
//
//  Created by Григорий Мартюшин on 12.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

BOOL isEnglishAlphabet(char ch){
    NSString *pattern = @"([a-z])";
    NSRegularExpressionOptions regexpOptions = NSRegularExpressionCaseInsensitive;
    NSError* error = NULL;
    
    NSRegularExpression* regexp = [NSRegularExpression regularExpressionWithPattern: pattern options: regexpOptions error: &error];
    
    if (error){
        return NO;
    } else {
        NSString *testChar = [NSString stringWithUTF8String:&ch];
        NSInteger match = [regexp numberOfMatchesInString:testChar options:0 range:NSMakeRange(0, [testChar length])];
        
        if (match > 0){
            return YES;
        } else {
            return NO;
        }
    }
    
    return YES;
}

void hwMenu() {
    int operations = -1;
    char ch;
    
    printf("\nChose what part of homewak you whant to use:\n");
    printf(" 1. Test char as a part of english alphaber.\n");
    printf(" 2. Calculator.\n");
    printf("-1. Exit\n");

    printf("You're chose: ");
    scanf(" %i", &operations);
    
    if (operations == 1) {
        BOOL test = NO;
        
        printf("Enter some char to test: ");
        scanf(" %c", &ch);
        
        test = isEnglishAlphabet(ch);

        if (test == YES) {
            printf("-----\nYou enter PART of english alphabet\n-----");
        } else {
            printf("-----\nYou enter NON english alphabet character.\n-----");
        }
        
        
        hwMenu();
    } else {
        Calculator *calc = [Calculator new];
        [calc getNumbers];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        hwMenu();
    }
    return 0;
}
