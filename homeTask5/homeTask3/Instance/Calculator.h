//
//  Calculator.h
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum OperationOfCalculate {
    OperationOfCalculateSum,
    OperationOfCalculateSubtraction,
    OperationOfCalculateProduct,
    OperationOfCalculateDivide
};
typedef enum OperationOfCalculate OperationOfCalculate;

@interface Calculator : NSObject

@property (nonatomic,strong) NSNumber* firstArgument;
@property (nonatomic,strong) NSNumber* secondArgument;
- (NSNumber *) calculateWithOperation: (OperationOfCalculate) operation with: (NSNumber *) firstArgument and: (NSNumber *) secondArgument;


@end

NS_ASSUME_NONNULL_END
