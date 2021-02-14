//
//  Flock.m
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import "Flock.h"
#import "Bird.h"

@implementation Flock

- (instancetype) init {
    self = [super init];
    if (self) {
        NSLog(@"\nThe flock was created");
    }
    return self;
}

- (void) configFlockWithBirds: (NSMutableArray *) birds {
    [birds retain];
    [birds release];
    self.birds = birds;
    NSLog(@"\nBirds were added to flock");
}

-(void) remove {
    for (Bird *bird in self.birds) {
        [bird release];
    }
    [self.birds release];
}

- (void) dealloc {
    [self remove];
    NSLog(@"\nThe Flock was deleted from memory");
    [super dealloc];
}


@end
