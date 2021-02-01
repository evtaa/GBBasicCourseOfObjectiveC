//
//  main.m
//  Lesson2
//
//  Created by Alexandr Evtodiy on 27.01.2021.
//

#import <Foundation/Foundation.h>
//#import "Functions.m"


BOOL hasEnglishCharacters (NSString *charValue) {
    NSCharacterSet * set = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
    return [charValue rangeOfCharacterFromSet:set].location != NSNotFound;
}

int sum (int a, int b) {
    return a + b;
}

int subtraction (int a, int b) {
    return a - b;
}

int product (int a, int b) {
    return a*b;
}

int divide (int a, int b) {
    return a/b;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //MARK: - Task 1
        // insert code here...
        NSString *charValue = @"г";
        if (hasEnglishCharacters(charValue)) {
            NSLog(@"\nThe char '%@' is included in a English alphabet", charValue);
        } else {
            NSLog(@"\nThe char '%@' is't included in a English alphabet", charValue);
        }
        
        //MARK: - Task 2
        int firstArgument = 0;
        int secondArgument = 0;
        
        scanf("%d",&firstArgument);
        scanf("%d",&secondArgument);
        
        NSLog(@"\nThe first argument is %d. \nThe second argument is %d. \nThe sum is %d. \nThe subtraction is %d. \nThe product is %d. \nThe divide is %d", firstArgument, secondArgument, sum(firstArgument, secondArgument),  subtraction(firstArgument, secondArgument), product(firstArgument, secondArgument),  divide(firstArgument, secondArgument) );
    }
    return 0;
}
