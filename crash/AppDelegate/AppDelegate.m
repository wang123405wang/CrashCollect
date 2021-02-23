//
//  AppDelegate.m
//  crash
//
//  Created by 杨柳 on 2021/2/23.
//

#import "AppDelegate.h"
#import "ALCCrashHandler.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    #pragma mark - 崩溃日志
    [[ALCCrashHandler shareInstance] setDefaultHandler];
    //发送崩溃日志
    [[ALCCrashHandler shareInstance] collectionExceptionMessage];
    
    return YES;
}

#pragma mark - UISceneSession lifecycle
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}

- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
}

@end
