//
//  CGSeesionBlockManager.m
//  TestURLSession
//
//  Created by DY on 16/7/8.
//  Copyright © 2016年 -. All rights reserved.
//

#import "CGSeesionBlockManager.h"

@interface CGSeesionBlockManager ()

@property (nonatomic, strong) NSURLSession *session;

@end

@implementation CGSeesionBlockManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _session = [NSURLSession sharedSession];
    }
    return self;
}

- (void)GETURL:(NSURL *)url
{
    NSURLSessionDataTask *task = [self.session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
    }];
    [self resumeTask:task];
}

- (void)POST:(NSURLRequest *)request
{
    NSURLSessionDataTask *task  = [self.session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
    }];
    [self resumeTask:task];
}

- (void)resumeTask:(NSURLSessionTask *)task
{
    [task resume];
}

@end
