//
//  ViewController.m
//  homeTask3
//
//  Created by Alexandr Evtodiy on 03.02.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

enum OperationOfCalculate {
    OperationOfCalculateSum,
    OperationOfCalculateSubtraction,
    OperationOfCalculateProduct,
    OperationOfCalculateDivide
};
typedef enum OperationOfCalculate OperationOfCalculate;

enum Gander {
    GanderMan = 1,
    GanderWoman = 0
};
typedef enum Gander Gander;

struct Human {
    NSString *name;
    NSInteger age;
    Gander gander;
};
typedef struct Human Human;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - first task
    NSArray *arrayOfStrings = @[@"a", @"b", @"c", @"d"];
    for (NSString *string in  arrayOfStrings) {
        NSLog(@"\n%@",string);
    }
    
    // MARK: - second task
    CGFloat result = [self calculate: OperationOfCalculateSum with: 3 and: 6] ;
    NSLog(@"\n%lf", result);
    result = [self calculate: OperationOfCalculateSubtraction with: 3 and: 6] ;
    NSLog(@"\n%lf", result);
    result = [self calculate: OperationOfCalculateProduct with: 3 and: 6] ;
    NSLog(@"\n%lf", result);
    result = [self calculate: OperationOfCalculateDivide with: 3 and: 6] ;
    NSLog(@"\n%lf", result);
    
    // MARK: - third task
    Human humanFirst = {@"Alex", 31, GanderMan};
    Human humanSecond = {@"Dosia", 26, GanderWoman};
    NSLog(@"\nThe name is %@. \nThe age is %i. \nThe gander is %i", humanFirst.name, humanFirst.age, humanFirst.gander);
    NSLog(@"\nThe name is %@. \nThe age is %li. \nThe gander is %i", humanSecond.name, humanSecond.age, humanSecond.gander);
}

- (CGFloat) calculate: (OperationOfCalculate) operation with: (CGFloat) firstArgument and: (CGFloat) secondArgument {
    
    switch (operation) {
        case OperationOfCalculateSum:
            return firstArgument + secondArgument;
        case OperationOfCalculateSubtraction:
            return firstArgument - secondArgument;
        case OperationOfCalculateProduct:
            return firstArgument * secondArgument;
        case OperationOfCalculateDivide:
            return firstArgument / secondArgument;
        default:
            NSLog(@"Функция не знает переданный метод");
            return 0;
    }
}


@end
