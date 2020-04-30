//
//  Students.m
//  someobjc
//
//  Created by Григорий Мартюшин on 27.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "Students.h"

@implementation Students

- (NSString *) fullName {
    return [self.name stringByAppendingFormat:@" %@", self.surname];
}

- (NSString *) description {
    return [NSString stringWithFormat:@"name: %@, age: %@", self.fullName, self.age];
}

- (instancetype) initWithName: (NSString *) name Surname:(NSString *) surname Age:(NSNumber *) age {
    self.name = name;
    self.surname = surname;
    _age = age;
    
    return self;
}

- (void) addAge {
    _age = [NSNumber numberWithInt:([self.age intValue] + 2)];
}

@end
