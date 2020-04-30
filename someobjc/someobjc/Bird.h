//
//  Bird.h
//  someobjc
//
//  Created by Григорий Мартюшин on 30.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong) NSString *name;

- (instancetype) initWithName:(NSString *) name;

@end

NS_ASSUME_NONNULL_END
