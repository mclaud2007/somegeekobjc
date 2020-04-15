//
//  main.m
//  someobjc
//
//  Created by Григорий Мартюшин on 12.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>

int menu() {
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
    scanf("%i",&menu_item);
    
    if (menu_item == -1 || menu_item == 1 || menu_item == 2 || menu_item == 3 || menu_item == 4 || menu_item == 5) {
        return menu_item;
    } else {
        printf("You must chose only one of the printed menu itemes or -1 to exit");
        return menu();
    }
}

void calc() {
    // Собираем числа
    int first = 0;
    int second = 0;
    int third = 0;
    int operator = -1;
    
    printf("\nPlease enter two numbers and choose what did you want to do.\n");
    printf("First one (or -1 to exit): ");
    scanf("%i", &first);
    
    if (first >= 0){
        printf("Second (or -1 to exit): ");
        scanf("%i", &second);
    }
    
    // Запросим действие
    if (first >= 0 && second >= 0) {
        operator = menu();
    }
    
    if (operator != -1) {
        switch (operator) {
            case 1:
                printf("Summ is: %i\n", (first + second));
                break;
            case 2:
                printf("Diff is: %i\n", (first - second));
                break;
            case 3:
                printf("Summ is: %i\n", (first * second));
                break;
            case 4:
                if (second == 0) {
                    printf("You can't divide on zero!");
                } else {
                    printf("Diff is: %i\n", (first / second));
                }
                
                break;
            case 5:
                printf("Please enter one more nuber: ");
                scanf("%i", &third);
                
                int avg = (first + second + third) / 3;
                printf("Average from three numbers is: %i\n", avg);
                break;
            default:
                printf("Unknown operator");
                break;
        }
        
        // Повторим еще раз
        calc();
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calc();
    }
    return 0;
}
