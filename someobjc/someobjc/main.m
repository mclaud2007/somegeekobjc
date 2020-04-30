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
#import "Bird.h"
#import "Flock.h"

void selectCalculatorOperation (Calculator *calc) {
    [calc retain];
    
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
    
    [calc release];
}

void loadNumbers (Calculator *calc) {
    [calc retain];
    
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
    
    [calc release];
}

void getMenu () {
    int operation = 0;
    
    printf("  1. Calculator\n");
    printf("  2. Birds\n");
    printf(" -1. Exit\n");
    
    printf("Select part of homework:");
    
    scanf(" %i", &operation);
    
    if (operation == 1) {
        Calculator *calc = [Calculator new];
        loadNumbers(calc);
        
        [calc release];
        
        getMenu();
        
    } else if (operation == 2) {
        // Создаем четырех птиц
        Bird *bird1 = [[Bird alloc] initWithName:@"Scrooge"];
        Bird *bird2 = [[Bird alloc] initWithName:@"Huey"];
        Bird *bird3 = [[Bird alloc] initWithName:@"Dewey"];
        Bird *bird4 = [[Bird alloc] initWithName:@"Louie"];
        
        // Троих ради эксперимента собираем в маасив
        NSArray *birds = [NSArray arrayWithObjects:bird1, bird2, bird3, bird4, nil];
        
        // Создаем стаю
        Flock *flock = [[Flock alloc] configWithBirds:birds];
            
        NSLog(@"%@", flock);
        
        getMenu();
    } else if (operation != -1) {
        getMenu();
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        getMenu();
    }
    
    return 0;
}
