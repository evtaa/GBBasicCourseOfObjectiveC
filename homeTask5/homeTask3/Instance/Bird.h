//
//  Bird.h
//  homeTask3
//
//  Created by Alexandr Evtodiy on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum ColorBird {
    ColorBirdWhite, ColorBirdBlack, ColorBirdYellow
};
typedef enum ColorBird ColorBird;

@interface Bird : NSObject

- (instancetype) initWithName: (NSString *) name andColor: (ColorBird) color andWeight: (NSNumber *) weight;
@property (nonatomic, strong) NSString *name;
@property (nonatomic)  ColorBird color;
@property (nonatomic, strong) NSNumber *weight;

@end

NS_ASSUME_NONNULL_END
