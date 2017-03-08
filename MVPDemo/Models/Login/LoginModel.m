//
//  LoginModel.m
//  MVPDemo
//
//  Created by xiang on 16/5/2.
//  Copyright © 2016年 xiang. All rights reserved.
//

#import "LoginModel.h"

@interface LoginModel ()

@end

@implementation LoginModel

+ (instancetype)shareInstance {
    static LoginModel *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

- (void)loginWithAccount:(NSString *)account password:(NSString *)pwd success:(void(^)())loginSuccess failure:(void(^)())loginFailed {
    if ([account isEqualToString:@"test"] && [pwd isEqualToString:@"123456"]) {
        loginSuccess();
    } else {
        loginFailed();
    }
}

@end
















