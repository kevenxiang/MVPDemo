//
//  LoginPresenter.h
//  MVPDemo
//
//  Created by xiang on 16/5/2.
//  Copyright © 2016年 xiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginPresenter : NSObject

- (void)loginWithAccount:(NSString *)account password:(NSString *)pwd success:(void(^)())loginSuccess failure:(void(^)())loginFailure;

@end
