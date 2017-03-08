//
//  LoginViewController.m
//  MVPDemo
//
//  Created by xiang on 16/5/2.
//  Copyright © 2016年 xiang. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginPresenter.h"

@interface LoginViewController ()

@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *pwdTextField;
@property (nonatomic, strong) LoginPresenter *presenter;

@end

@implementation LoginViewController

#pragma mark - life cycle
- (instancetype)initWithPresenter:(LoginPresenter *)presenter {
    if (self = [super init]) {
        self.presenter = presenter;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event responds
- (void)login {
    [self.view endEditing:YES];
    if (!self.accountTextField.hasText || !self.pwdTextField.hasText) {
        NSLog(@"账号或密码不能为空");
        return;
    }
    
    [self.presenter loginWithAccount:self.accountTextField.text password:self.pwdTextField.text success:^{
        NSLog(@"登录成功");
    } failure:^{
        NSLog(@"登录失败");
    }];
}

#pragma mark - getting and setting
- (void)initUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    self.accountTextField.center = CGPointMake(self.view.center.x, 100);
    self.accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.accountTextField.placeholder = @"请输入用户名";
    
    self.pwdTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    self.pwdTextField.center = CGPointMake(self.view.center.x, 160);
    self.pwdTextField.secureTextEntry = YES;
    self.pwdTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.pwdTextField.placeholder = @"请输入密码";
    
    [self.view addSubview:self.accountTextField];
    [self.view addSubview:self.pwdTextField];
    
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 60)];
    loginBtn.center = CGPointMake(self.view.center.x, 220);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
}


@end

















