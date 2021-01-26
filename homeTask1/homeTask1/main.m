//
//  main.m
//  homeTask1
//
//  Created by Alexandr Evtodiy on 26.01.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Task 1
        float first = 0;
        float second = 0;
        //printf("First number: ");
        NSLog(@"First number: ");
        scanf("%f", &first);
        NSLog(@"Second number: ");
        scanf("%f",&second);
        // A Sum
        NSLog(@"%f", first + second);
        // A Subtraction
        NSLog(@"%f", first - second);
        // A Product
        NSLog(@"%f", first * second);
        //A Divide
        NSLog(@"%f", first / second);
        
        //Task 2
        // A Sum
        NSLog(@"First value - %f, Second value - %f, Result of a sum - %f",first, second, first + second);
        // A Subtraction
        NSLog(@"First value - %f, Second value - %f, Result of a subtraction - %f", first, second, first - second);
        // A Product
        NSLog(@"First value - %f, Second value - %f, Result of a product - %f", first, second, first * second);
        //A Divide
        NSLog(@"First value - %f, Second value - %f, Result of a divide - %f", first, second, first / second);
        
        // Task 3
        float firstFloatNumber = 0;
        float secondFloatNumber = 0;
        float thirdFloatNumber = 0;
        NSLog(@"First number: ");
        scanf("%f", &firstFloatNumber);
        NSLog(@"Second number: ");
        scanf("%f", &secondFloatNumber);
        NSLog(@"Third number: ");
        scanf("%f", &thirdFloatNumber);
        NSLog(@"First value - %f, Second value - %f, Third value - %f, A average value - %f", firstFloatNumber, secondFloatNumber, thirdFloatNumber, (firstFloatNumber + secondFloatNumber + thirdFloatNumber)/3 );
    }
    return 0;
}
