# LumberjackLogger

[![CI Status](http://img.shields.io/travis/jiakailian/LumberjackLogger.svg?style=flat)](https://travis-ci.org/jiakailian/LumberjackLogger)
[![Version](https://img.shields.io/cocoapods/v/LumberjackLogger.svg?style=flat)](http://cocoapods.org/pods/LumberjackLogger)
[![License](https://img.shields.io/cocoapods/l/LumberjackLogger.svg?style=flat)](http://cocoapods.org/pods/LumberjackLogger)
[![Platform](https://img.shields.io/cocoapods/p/LumberjackLogger.svg?style=flat)](http://cocoapods.org/pods/LumberjackLogger)

A CocoaLumberjack helper class set to simplify the usage of [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack).

##**No initialization code needed.**

Just add this pod into your pod file,and that's all you need to do.

All you need to do is importing the **LumberjackLogger.h** at the prefix header file, you should able to use all the following log levels in your code.

-   DDLogError
-   DDLogWarn
-   DDLogInfo
-   DDLogDebug
-   DDLogVerbose

## Usage

To run the example project, clone the repo, and run `pod `install from the Example directory first.

## Requirements

## Installation

LumberjackLogger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LumberjackLogger', :git => 'https://github.com/jiakai-lian/LumberjackLogger.git'
```

## Todo
- add a customized log file manager to send out log files by email or
   just upload to a server (possibly compressed)

## Author

Jiakai Lian, jiakai.lian@gmail.com

## License

LumberjackLogger is available under the MIT license. See the LICENSE file for more info.
