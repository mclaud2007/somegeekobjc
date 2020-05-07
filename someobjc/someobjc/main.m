//
//  main.m
//  someobjc
//
//  Created by Григорий Мартюшин on 07.05.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("Type some text, or -1 to write them on disk:");
        
        char c[255];
        BOOL doSmthn = true;
        
        // Введенная строка в виде NSString
        NSMutableString *string = [[NSMutableString alloc] init];
                
        // Здесь будем хранить все что пользователь ввел
        NSMutableArray *users_input = [[NSMutableArray alloc] init];
        
        // Получаем пользовательский ввод
        do {
            // Читаем строку
            scanf(" %s", c);
            
            // Переводим в NSString
            string = [NSMutableString stringWithCString:c encoding:1];
            
            // Ввели -1
            if ([string  isNotEqualTo: @"-1"] == YES) {
                [users_input addObject:string];
                printf("some text or -1 to write: ");
            } else {
                doSmthn = false;
            }
        } while (doSmthn);
        
        // Сохраняем в виде plist
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        path = [path stringByAppendingString:@"/UsersInput.plist"];
        [users_input writeToFile:path atomically:YES];
        NSLog(@"%@", users_input);
        
        users_input = nil;
        NSLog(@"%@", users_input);
        
        users_input = [NSMutableArray arrayWithContentsOfFile:path];
        NSLog(@"%@", users_input);
        
    }
    return 0;
}
