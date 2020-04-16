//
//  Calculator.h
//  someobjc
//
//  Created by Григорий Мартюшин on 15.04.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property NSNumber *first;
@property NSNumber *second;
@property NSNumber *operations;

-(void)getMenu;
-(void)doPlusWithFirst:(NSNumber *) first Second:(NSNumber *) second;
-(void)doMinusWithFirst:(NSNumber *) first Second:(NSNumber *) second;
-(void)doMultiplyWithFirst:(NSNumber *) first Second:(NSNumber *) second;
-(void)doDevideWithFirst:(NSNumber *) first Second:(NSNumber *) second;
-(void)doAvgWithFirst:(NSNumber *) first Second:(NSNumber *) second Third:(NSNumber *) third;
-(void)getNumbers;

@end

NS_ASSUME_NONNULL_END
