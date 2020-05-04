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

@property (nonatomic, strong) NSNumber *first;
@property (nonatomic, strong) NSNumber *second;
@property (nonatomic, strong) NSNumber *operations;

enum OperationType {
    opPlus = 1,
    opMinus = 2,
    opMultipy = 3,
    opDivide = 4,
    opAvg = 5
};

typedef NSInteger OperationType;
typedef NSNumber * _Nonnull (^CalculatorBlock) (NSNumber * first, NSNumber * second);
typedef void (^CalculatorResult) (NSNumber * result);
typedef void (^MakeQueue) (void);

- (void)initWithNumbersFirst:(NSNumber *) first Second:(NSNumber *) second;

@end

NS_ASSUME_NONNULL_END
