//
//  AppDelegate.m
//  EmptyApplication
//
//  Created by Alexandr Evtodiy on 20.02.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"\nThe application loaded launching with options.");
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"\nThe application will be a resign active status.");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"\nThe application is staying at a active status.");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"\nThe application is staying at a background status.");
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"\nThe application will enter a foreground status from a background status.");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"\nThe application will terminate.");
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
