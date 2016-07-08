//
//  CGSessionManager.h
//  TestURLSession
//
//  Created by DY on 16/7/8.
//  Copyright © 2016年 -. All rights reserved.
//

/** 
 *  NSURLSession的使用 
 *  参考资料:
 *
 *          http://www.jianshu.com/p/fafc67475c73
 *          http://www.cocoachina.com/industry/20131106/7304.html
 *          http://www.jianshu.com/p/dc396c31ed2a
 *  官网资料：
 *          https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/URLLoadingSystem/Articles/UsingNSURLSession.html#//apple_ref/doc/uid/TP40013509-SW1
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CGSessionManager : NSObject

@property (nonatomic, strong) NSURLSession *session;

#pragma mark - block回调请求


@end

NS_ASSUME_NONNULL_END