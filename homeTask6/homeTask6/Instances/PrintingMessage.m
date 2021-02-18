//
//  PrintingMessage.m
//  homeTask6
//
//  Created by Alexandr Evtodiy on 14.02.2021.
//

#import "PrintingMessage.h"

MessageBlock firstGreeting = ^(void) {
    return @"How are you doing?";
};
MessageBlock secondGreeting = ^(void) {
    return @"How are you getting on?";
};
MessageBlock thirdGreeting = ^(void) {
    return @"How's life?";
};
MessageBlock firstReplyToGreeting = ^(void) {
    return @"I'm fine, thanks!";
};
MessageBlock secondReplyToGreeting = ^(void) {
    return @"Everything's great.";
};
MessageBlock thirdReplyToGreeting = ^(void) {
    return @"I'm doing well.";
};

@implementation PrintingMessage

+ (NSString *) printMessageWithType: (MessageType) type {
    switch (type) {
        case MessageTypeFirstGreeting:
            return firstGreeting ();
            break;
        case MessageTypeSecondGreeting:
            return secondGreeting ();
            break;
        case MessageTypeThirdGreeting:
            return thirdGreeting ();
            break;
        case MessageTypeFirstReplyToGreeting:
            return firstReplyToGreeting ();
            break;
        case MessageTypeSecondReplyToGreeting:
            return secondReplyToGreeting ();
            break;
        case MessageTypeThirdReplyToGreeting:
            return thirdReplyToGreeting ();
            break;

        default:
            return @"The program doesn't know this MessageType";
            break;
    }
}

@end
