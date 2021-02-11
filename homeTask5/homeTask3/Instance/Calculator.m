//
//  Calculator.m
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import "Calculator.h"

@implementation Calculator

-(instancetype) init {
    self = [super init];
    if (self) {
        NSLog (@"\nThe calculator was initialised");
    }
    return self;
}

- (NSNumber *) calculateWithOperation: (OperationOfCalculate) operation with: (NSNumber *) firstArgument and: (NSNumber *) secondArgument {
    
    [firstArgument retain];
    [firstArgument release];
    self.firstArgument = firstArgument;
    NSLog(@"\nFirstArgument: %@ was added by a calculator", firstArgument);
    
    [secondArgument retain];
    [secondArgument release];
    self.secondArgument = secondArgument;
    NSLog(@"\nSecondArgument: %@ was added by a calculator", secondArgument);
    
    switch (operation) {
        case OperationOfCalculateSum:
            return [NSNumber numberWithDouble:(firstArgument.doubleValue + secondArgument.doubleValue)];
        case OperationOfCalculateSubtraction:
            return [NSNumber numberWithDouble:(firstArgument.doubleValue - secondArgument.doubleValue)];
        case OperationOfCalculateProduct:
            return [NSNumber numberWithDouble:(firstArgument.doubleValue * secondArgument.doubleValue)];
        case OperationOfCalculateDivide:
            return [NSNumber numberWithDouble:(firstArgument.doubleValue / secondArgument.doubleValue)];
        default:
            NSLog(@"\nThe function don't know a method");
            return @0;
    }
}

- (void) remove {
    [self.firstArgument release];
    [self.secondArgument release];
    NSLog(@"\nThe first argument and the second argument were deleted from memory");
}

-(void) dealloc {
    [self remove];
    NSLog(@"\nThe calculator was deleted from memory");
    [super dealloc];
}

@end
