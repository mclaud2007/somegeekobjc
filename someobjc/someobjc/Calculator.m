//
//  Calculator.m
//  someobjc
//
//  Created by Григорий Мартюшин on 15.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(void)getMenu {
    Calculator *calc = self;
    int menu_item = 0;
    
    // Выводим приветствие
    printf("\nSelect what did you want to do with entered numbers.");
    printf("\n--------\n");
    printf(" 1: First plus second\n");
    printf(" 2: First minus scond\n");
    printf(" 3: First multiply second\n");
    printf(" 4: Second divided by first\n");
    printf(" 5: Average of three numbers (must enter another one number after chose this menu)\n");
    printf("-1: Exit\n");
    printf("--------\n");
    
    // Просим выбрать элемент меню
    scanf("%int",&menu_item);
    calc.operations = [NSNumber numberWithInteger:menu_item];
    
    if (menu_item != -1 && menu_item != 1 && menu_item != 2 && menu_item != 3 && menu_item != 4 && menu_item != 5) {
        printf("You must chose only one of the printed menu itemes or -1 to exit");
        [self getMenu];
    }
}

-(void) getNumbers {
    Calculator *calc = self;
    
    int first_entered = 0;
    int second_entered = 0;
    
    printf("\nPlease enter two numbers and choose what did you want to do.\n");
    printf("First one (or -1 to exit): ");
    scanf("%i", &first_entered);
    
    calc.first = [NSNumber numberWithInt:first_entered];
    
    // Если перое число -1 - значит дальше нет смысла запускать ничего
    if (first_entered > -1) {
        printf("Second one (or -1 to exit): ");
        scanf("%i", &second_entered);
    
        calc.second = [NSNumber numberWithInt:second_entered];
        
        if (first_entered > -1 && second_entered > -1){
            // Запрашиваем меню
            [self getMenu];
            
            // И выполняем запрошенное
            [self doCalculateWithOperation:calc.operations];
        }
    }
}

-(void) doCalculateWithOperation:(NSNumber *) operation {
    Calculator *calc = self;
    
    switch ([operation intValue]) {
        case 1: {
            [self doPlusWithFirst:calc.first Second:calc.second];
            break;
        }
        case 2: {
            [self doMinusWithFirst:calc.first Second:calc.second];
            break;
        }
        case 3: {
            [self doMultiplyWithFirst:calc.first Second:calc.second];
            break;
        }
        case 4: {
            if (calc.second == 0) {
                printf("You can't divide on zero!");
            } else {
                [self doDevideWithFirst:calc.first Second:calc.second];
            }
            
            break;
        }
        case 5: {
            int third = 0;
            
            printf("Please enter one more nuber: ");
            scanf("%i", &third);
            
            [self doAvgWithFirst:calc.first Second:calc.second Third:[NSNumber numberWithInteger:third]];
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
    if ([operation intValue] > -1) {
        [self getNumbers];
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

@end
