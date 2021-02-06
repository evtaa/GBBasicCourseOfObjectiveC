//
//  StudentClass.m
//  homeTask4
//
//  Created by Alexandr Evtodiy on 05.02.2021.
//

#import "StudentClass.h"

@implementation Student

NSString *name;
NSString *surName;
NSString *fullName;
NSInteger age;

// it's custom initialisation
-(instancetype) initWithName:(NSString*) name surName: (NSString*) surName age: (NSInteger) age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surName = surName;
        self.fullName = [NSString stringWithFormat:@"%@ %@",self.surName, self.name];
        _age = age;
    }
    return self;
}

// function adds the age
-(void) addAge: (NSInteger) addition {
    _age += addition;
}

@end
