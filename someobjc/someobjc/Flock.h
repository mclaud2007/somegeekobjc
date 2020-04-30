//
//  Flock.h
//  someobjc
//
//  Created by Григорий Мартюшин on 30.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSArray *birds;

- (instancetype) configWithBirds: (NSArray *) aBirds;
- (void) removeAllBirds;
- (void) removeBirdAtIndex: (NSUInteger) idx;
- (NSString *) description;

@end

NS_ASSUME_NONNULL_END
