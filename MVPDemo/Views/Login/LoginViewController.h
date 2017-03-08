//
//  LoginViewController.h
//  MVPDemo
//
//  Created by xiang on 16/5/2.
//  Copyright © 2016年 xiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LoginPresenter;

@interface LoginViewController : UIViewController

- (instancetype)initWithPresenter:(LoginPresenter *)presenter;

@end
