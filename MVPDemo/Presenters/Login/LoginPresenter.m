//
//  LoginPresenter.m
//  MVPDemo
//
//  Created by xiang on 16/5/2.
//  Copyright © 2016年 xiang. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@implementation LoginPresenter

- (void)loginWithAccount:(NSString *)account password:(NSString *)pwd success:(void(^)())loginSuccess failure:(void(^)())loginFailure {
    [[LoginModel shareInstance] loginWithAccount:account password:pwd success:^{
        loginSuccess();
    } failure:^{
        loginFailure();
    }];
}

@end
