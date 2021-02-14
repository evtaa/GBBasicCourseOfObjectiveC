//
//  ViewController.m
//  homeTask6
//
//  Created by Alexandr Evtodiy on 14.02.2021.
//

#import "ViewController.h"
#import "PrintingMessage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - First task
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeFirstGreeting]);
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeFirstReplyToGreeting]);
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeSecondGreeting]);
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeSecondReplyToGreeting]);
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeThirdGreeting]);
    NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeThirdReplyToGreeting]);

    //MARK: - Second task
    dispatch_queue_t secondQueue = dispatch_queue_create("secondQueue", NULL);
    dispatch_async(secondQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeFirstGreeting]);
    });
    dispatch_sync(secondQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeFirstReplyToGreeting]);
    });
    
    dispatch_queue_t firstQueue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
    dispatch_async(firstQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeSecondGreeting]);
    });
    dispatch_async(firstQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeSecondReplyToGreeting]);
    });
    
    dispatch_sync(firstQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeThirdGreeting]);
    });
    dispatch_sync(firstQueue, ^{
        NSLog(@"%@",[PrintingMessage printMessageWithType:MessageTypeThirdReplyToGreeting]);
    });
}


@end
