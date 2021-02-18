//
//  PrintingMessage.h
//  homeTask6
//
//  Created by Alexandr Evtodiy on 14.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString*  (^MessageBlock)(void);

typedef enum MessageType {
    MessageTypeFirstGreeting,
    MessageTypeSecondGreeting,
    MessageTypeThirdGreeting,
    MessageTypeFirstReplyToGreeting,
    MessageTypeSecondReplyToGreeting,
    MessageTypeThirdReplyToGreeting,
} MessageType;

@interface PrintingMessage : NSObject

+ (NSString *) printMessageWithType: (MessageType) type;

@end

NS_ASSUME_NONNULL_END
