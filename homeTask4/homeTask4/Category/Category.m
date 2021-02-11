//
//  Category.m
//  homeTask4
//
//  Created by Alexandr Evtodiy on 06.02.2021.
//

#import <Foundation/Foundation.h>
#import "StudentClass.h"

@interface Student (description)

-(NSString *) description;

@end

@implementation Student (description)

- (NSString *) description {
    NSString * description = [NSString stringWithFormat: @"\nThe name is %@\nThe surname is %@\nThe fullname is %@\nThe age is %li", self.name,  self.surName,  self.fullName, (long)self.age];
    return description;
}

@end


