//
//  ALCCrashHandler.h
//  crash
//
//  Created by 杨柳 on 2021/2/23.
//

#import <Foundation/Foundation.h>

#define UncaughtExceptionManager [ALCCrashHandler shareInstance]
@interface ALCCrashHandler : NSObject

+ (instancetype)shareInstance;

/** 设置默认异常处理器 */
- (void)setDefaultHandler;

/** 发送崩溃日志 */
- (void)collectionExceptionMessage;

/** 获取异常处理器 */
- (NSUncaughtExceptionHandler *)getHandler;

@end
