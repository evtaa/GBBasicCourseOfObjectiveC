//
//  AppDelegate.h
//  homeTask3
//
//  Created by Alexandr Evtodiy on 03.02.2021.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

