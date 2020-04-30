//
//  Students.h
//  someobjc
//
//  Created by Григорий Мартюшин on 27.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Students : NSObject

@property NSString *name;
@property NSString *surname;
@property (nonatomic) NSString *fullName;
@property (nonatomic,readonly) NSNumber *age;

- (NSString *) description;
- (instancetype) initWithName: (NSString *) nane Surname:(NSString *) surname Age:(NSNumber *) age;
- (void) addAge;

@end

NS_ASSUME_NONNULL_END
