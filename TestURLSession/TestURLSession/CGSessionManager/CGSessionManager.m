//
//  CGSessionManager.m
//  TestURLSession
//
//  Created by DY on 16/7/8.
//  Copyright © 2016年 -. All rights reserved.
//

#import "CGSessionManager.h"

@interface CGSessionManager ()
<
    NSURLSessionDelegate,
    NSURLSessionDataDelegate,
    NSURLSessionDownloadDelegate
>



@end

@implementation CGSessionManager



#pragma mark - NSURLSessionDelegate

#pragma mark - NSURLSessionDataDelegate
// 接收到服务器的响应
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(NSURLResponse *)response completionHandler:(void (^)(NSURLSessionResponseDisposition))completionHandler
{
    //允许处理服务器的响应，才会继续接收服务器返回的数据
    completionHandler(NSURLSessionResponseAllow);
}

// 接收到服务器的数据，可能多次调用
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data
{
    
}

//请求结果 成功／失败 在下载完成后也会调用
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
    
}

#pragma mark - NSURLSessionDownloadDelegate
//每次写入调用，可能调用多次
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    //通过已写入的长度和总长度算出下载进度
    //CGFloat progress = 1.0 * totalBytesWritten / totalBytesExpectedToWrite;
}

//下载完成调用
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
    
}

#pragma mark - 设置属性

- (NSURLSession *)session
{
    if (_session) {
        return _session;
    }
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSOperationQueue *operationQueue                = [[NSOperationQueue alloc] init];
    
    _session = [NSURLSession sessionWithConfiguration:sessionConfiguration
                                             delegate:self
                                        delegateQueue:operationQueue];
    
    return _session;;
}

@end
