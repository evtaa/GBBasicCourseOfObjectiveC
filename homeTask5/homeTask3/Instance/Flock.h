//
//  Flock.h
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

- (void) configFlockWithBirds: (NSMutableArray *) birds;

@property (nonatomic, strong) NSMutableArray *birds;

@end

NS_ASSUME_NONNULL_END
