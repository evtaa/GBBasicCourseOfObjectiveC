//
//  ViewController.m
//  EmptyApplication
//
//  Created by Alexandr Evtodiy on 20.02.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"\nThe viewcontroller has loaded.");
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"\nThe viewcontroller will appear.");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"\nThe viewcontroller appeared.");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"\nThe viewcontroller will disappear.");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"\nThe viewcontroller disappeared.");
    
}
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"\nThe viewcontroller will transfer at other size");
}


@end
