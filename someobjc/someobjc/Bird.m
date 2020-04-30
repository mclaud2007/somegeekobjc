//
//  Bird.m
//  someobjc
//
//  Created by Григорий Мартюшин on 30.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "Bird.h"

@implementation Bird: NSObject

-(instancetype) initWithName:(NSString *)name {
    [super init];
    
    [name retain];
    [name release];
    
    _name = name;
        
    return self;
}

@end
