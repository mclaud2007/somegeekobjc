//
//  Calculator.m
//  someobjc
//
//  Created by Григорий Мартюшин on 15.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "Calculator.h"
#import "main.h"

@implementation Calculator: NSObject

-(void) initWithNumbersFirst:(NSNumber *) first Second:(NSNumber *) second {
    [super init];
    
    [first retain];
    [first release];
    _first = first;
    
    [second retain];
    [second release];
    _second = second;
    
    if ([_second intValue] > -1) {
        // Выберем что хотим сделать
        selectCalculatorOperation(self);
        
        // И сделаем
        [self doCalculate];
    }
}

-(void) doCalculate {
    switch ([self.operations intValue]) {
        case opPlus: {
            [self doPlusWithFirst:self.first Second:self.second];
            break;
        }
            
        case opMinus: {
            [self doMinusWithFirst:self.first Second:self.second];
            break;
        }
            
        case opMultipy: {
            [self doMultiplyWithFirst:self.first Second:self.second];
            break;
        }
            
        case opDivide: {
            if (self.second == 0) {
                printf("You can't divide on zero!");
            } else {
                [self doDevideWithFirst:self.first Second:self.second];
            }
            
            break;
        }
            
        case opAvg: {
            int third = 0;
            
            printf("Please enter one more nuber: ");
            scanf("%i", &third);
            
            [self doAvgWithFirst:self.first Second:self.second Third:[NSNumber numberWithInteger:third]];
            break;
        }
            
        case -1: {
            printf("Exit!\n");
            break;
        }
            
        default:
            printf("Unknown operator");
            break;
    }

    // И запускаем заново
    if ([self.operations intValue] > -1) {
        loadNumbers(self);
    }
}

-(void)doPlusWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Summ is: %i\n", ([first intValue] + [second intValue]));
}

-(void)doMinusWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Diff is: %i\n", ([first intValue] - [second intValue]));
}

-(void)doMultiplyWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Summ is: %i\n", ([first intValue] * [second intValue]));
}

-(void)doDevideWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Diff is: %i\n", ([first intValue] / [second intValue]));
}

-(void)doAvgWithFirst:(NSNumber *) first Second:(NSNumber *) second Third:(NSNumber *) third {
    int avg = ([first intValue] + [second intValue] + [third intValue]) / 3;
    printf("Average from three numbers is: %i\n", avg);
}

- (void) dealloc {
    [super dealloc];
    printf("calculator is dead\n");
}

@end
