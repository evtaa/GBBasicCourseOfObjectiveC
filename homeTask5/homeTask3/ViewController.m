//
//  ViewController.m
//  homeTask3
//
//  Created by Alexandr Evtodiy on 03.02.2021.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Bird.h"
#import "Flock.h"

@interface ViewController ()

@end

typedef enum OperationOfCalculate OperationOfCalculate;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - task1
    Calculator *calculator1 = [[Calculator alloc] init];
    
    NSNumber *firstArgument = [[NSNumber alloc] initWithDouble: (CGFloat)100];
    NSNumber *secondArgument = [[NSNumber alloc] initWithDouble: (CGFloat)50];
    
    NSNumber *result = [calculator1 calculateWithOperation: OperationOfCalculateSum with: firstArgument and: secondArgument];
    NSLog(@"\nThe result of sum is %@", result);
    result = [calculator1 calculateWithOperation: OperationOfCalculateSubtraction with: firstArgument and: secondArgument];
    NSLog(@"\nThe result of subtraction is %@", result);
    result = [calculator1 calculateWithOperation: OperationOfCalculateProduct with: firstArgument and: secondArgument];
    NSLog(@"\nThe result of product is %@", result);
    result = [calculator1 calculateWithOperation: OperationOfCalculateDivide with: firstArgument and: secondArgument];
    NSLog(@"\nThe result of divide is %@", result);
    [calculator1 release];
    [result release];
    
    // MARK: - task2
    Flock *flock = [[Flock alloc] init];
    
    NSString *firstName = @"Chaika";
    NSNumber *firstWeight = @3.2;
    
    NSString *secondName = @"Chaika";
    NSNumber *secondWeight = @1.5;
    
    Bird *firstBird = [[Bird alloc] initWithName: firstName andColor: ColorBirdWhite andWeight: firstWeight];
    Bird *secondBird = [[Bird alloc] initWithName: secondName andColor: ColorBirdWhite andWeight: secondWeight];
    
    NSMutableArray *birds = [NSMutableArray arrayWithObjects: firstBird, secondBird, nil];
    
    [flock configFlockWithBirds: birds];
    
    [flock release];

}


@end
