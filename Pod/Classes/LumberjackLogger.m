//
//  LumberjackLogger.m
//  Pods
//
//  Created by jiakai lian on 29/09/2015.
//
//

#import "LumberjackLogger.h"

@implementation LumberjackLogger

+ (void)load
{
    id<DDLogFormatter> formatter = [[self alloc] init];
    
#ifdef DEBUG
    //DDASLLogger
    DDASLLogger *aslLogger = [DDASLLogger sharedInstance];
    aslLogger.logFormatter = formatter;
    [DDLog addLogger:aslLogger];
    
    //DDTTYLogger
    DDTTYLogger *ttyLogger = [DDTTYLogger sharedInstance];
    ttyLogger.logFormatter = formatter;
    [DDLog addLogger:ttyLogger];
#endif
    
    //DDFileLogger
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [DDLog addLogger:fileLogger];
}

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"E"; break;
        case DDLogFlagWarning  : logLevel = @"W"; break;
        case DDLogFlagInfo     : logLevel = @"I"; break;
        case DDLogFlagDebug    : logLevel = @"D"; break;
        default                : logLevel = @"V"; break;
    }
    
    return [NSString stringWithFormat:@"[%@] %@ [Line %lu] %@",
             logLevel,
             logMessage.function,
             (unsigned long)logMessage.line,
             logMessage.message];
}

@end
