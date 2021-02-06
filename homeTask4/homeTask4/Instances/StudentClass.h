//
//  StudentClass.h
//  homeTask4
//
//  Created by Alexandr Evtodiy on 05.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student: NSObject

-(instancetype) initWithName: (NSString *) name surName: (NSString *) surName age: (NSInteger) age;

-(void) addAge: (NSInteger) addition;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, readonly) NSInteger age;

@end

NS_ASSUME_NONNULL_END
