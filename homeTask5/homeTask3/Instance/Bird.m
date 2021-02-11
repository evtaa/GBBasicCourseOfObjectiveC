//
//  Bird.m
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initWithName: (NSString *) name andColor: (ColorBird) color andWeight: (NSNumber *) weight {
    self = [super init];
    if (self) {
        [weight retain];
        [weight release];
        self.weight = weight;
        
        [name retain];
        [name release];
        self.name = name;
        
        self.color = color;
        NSLog(@"\nBird was initialised with name: %@, weight: %@ and color: %@", self.name, self.weight, [self colorToString]);
    }
    return self;
}

- (NSString *) colorToString {
    switch (self.color) {
        case ColorBirdWhite:
            return @"white";
        case ColorBirdBlack:
            return @"black";
        case ColorBirdYellow:
            return @"yellow";
        default:
            return @"The selected color doesn't exist";
    }
}

-(void) dealloc {
    NSLog(@"\nThe Bird was deleted from memory");
    [self.weight release];
    [self.name release];
    [super dealloc];
}

@end
