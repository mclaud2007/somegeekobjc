//
//  AppDelegate.m
//  someobjc
//
//  Created by Григорий Мартюшин on 10.05.2020.
//  Copyright © 2020 Григорий Мартюшин. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"Application loaded end ready to interract with user.");
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"Application restore from background.");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"Application ready to go to background");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Application go to foreground soon");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"Application terminated");
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
