//
//  ViewController.m
//  homeTask4
//
//  Created by Alexandr Evtodiy on 05.02.2021.
//

#import "ViewController.h"
#import "StudentClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Student *firstStudent = [[Student alloc] initWithName: @"Alex" surName: @"Evtodiy" age: 31];
    NSMutableArray *students = [NSMutableArray arrayWithObjects: firstStudent, nil];
    
    Student *secondStudent = [[Student alloc] initWithName: @"Dosia" surName: @"Naichinberg" age: 25];
    [students addObject: secondStudent];
    
    firstStudent = nil;
    secondStudent = nil;
    
    for (Student *student in students) {
        [student addAge: 2];
        NSLog(@"%@",student.description);
    }
}

@end
