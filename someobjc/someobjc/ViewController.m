//
//  ViewController.m
//  someobjc
//
//  Created by Григорий Мартюшин on 27.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "ViewController.h"
#import "Students.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Students *student1 = [[Students alloc] initWithName:@"Ivan" Surname:@"Petrov" Age:@21];
    Students *student2 = [[Students alloc] initWithName:@"Petr" Surname:@"Ivanov" Age:@22];
    Students *student3 = [[Students alloc] initWithName:@"Fedor" Surname:@"Sidorov" Age:@24];
    
    NSArray *students = [NSArray arrayWithObjects:student1, student2, student3, nil];
    
    // Вывводим список студентов
    for (int i = 0; i < students.count; i++) {
        NSLog(@"Student%i: %@", (i + 1), [students objectAtIndex:i]);
    }
    
    // Прибавим последнему пользователю возраст и выведем еще раз
    [student3 addAge];
    NSLog(@"Student3: %@", student3);
}


@end
