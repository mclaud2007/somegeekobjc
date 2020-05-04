//
//  main.m
//  someobjc
//
//  Created by Григорий Мартюшин on 12.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "main.h"

void selectCalculatorOperation (Calculator *calc) {
    int menu_item = 0;
    
    // Выводим приветствие
    printf("\nSelect what did you want to do with entered numbers.");
    printf("\n--------\n");
    printf(" 1: First plus second\n");
    printf(" 2: First minus scond\n");
    printf(" 3: First multiply second\n");
    printf(" 4: Second divided by first\n");
    printf("-1: Exit\n");
    printf("--------\n");
    
    printf("Your chois: ");
    // Просим выбрать элемент меню
    scanf("%int", &menu_item);
    
    
    // Проверим введенное число
    switch (menu_item) {
        // Либо одна из пяти стандартных операций (и на последней мы остановимся)
        // либо дефолтный кейс
        case opPlus:
        case opMinus:
        case opMultipy:
        case opDivide:
        case opAvg:
            calc.operations = [NSNumber numberWithInteger:menu_item];
            break;
        default: {
            selectCalculatorOperation(calc);
        }
        
    }
}

void loadNumbers (Calculator *calc) {
    int first_entered = 0;
    int second_entered = 0;
    
    printf("\nPlease enter two numbers and choose what did you want to do.\n");
    printf("First one (or -1 to exit): ");
    scanf("%i", &first_entered);
    
    if (first_entered > -1) {
        printf("Second one (or -1 to exit): ");
        scanf("%i", &second_entered);
        
        // Инициализируем калькулятор введенными данными
        [calc initWithNumbersFirst:[NSNumber numberWithInt:first_entered] Second:[NSNumber numberWithInt:second_entered]];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *calc = [Calculator new];
        loadNumbers(calc);
    }
    
    return 0;
}
