//
//  LumberjackLogger.h
//  Pods
//
//  Created by jiakai lian on 29/09/2015.
//
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

//If you set the log level to DDLogLevelError, then you will only see Error statements.
//If you set the log level to DDLogLevelWarn, then you will only see Error and Warn statements.
//If you set the log level to DDLogLevelInfo, you'll see Error, Warn and Info statements.
//If you set the log level to DDLogLevelDebug, you'll see Error, Warn, Info and Debug statements.
//If you set the log level to DDLogLevelVerbose, you'll see all DDLog statements.
//If you set the log level to DDLogLevelOff, you won't see any DDLog statements.

#ifdef DEBUG
static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
#else
static const DDLogLevel ddLogLevel = DDLogLevelWarn;
#endif

@interface LumberjackLogger : NSObject

@end
