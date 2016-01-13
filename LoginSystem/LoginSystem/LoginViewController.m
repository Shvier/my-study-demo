//
//  LoginViewController.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "WelcomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)dealloc {
    [_loginView release];
    [super dealloc];
}

- (void)loadView {
    _loginView = [[LoginView alloc] initWithFrame:[[UIScreen mainScreen] bounds] usernamePlaceholder:@"please input username" passwordPlaceholder:@"please input password" font:[UIFont boldSystemFontOfSize:18] borderStyle:UITextBorderStyleRoundedRect secureTextEntry:YES usernameKeyboardType:UIKeyboardTypeNumberPad passwordKeyboardType:UIKeyboardTypeDefault loginTitle:@"Sign in" registTitle:@"Sign up"];
    self.view = _loginView;
    
    _loginView.usernameText.delegate = self;
    _loginView.passwordText.delegate = self;
    
    [_loginView.loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.title = @"Login";
    UIBarButtonItem *registButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(regist)];
    self.navigationItem.rightBarButtonItem = registButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark --login method
- (void)login {
    WelcomeViewController *welVC = [[WelcomeViewController alloc] init];
    [self.navigationController pushViewController:welVC animated:YES];
    [welVC release];
}

#pragma mark --regist method
- (void)regist {
    RegistViewController *registVC = [[RegistViewController alloc] init];
    UINavigationController *naVC = [[UINavigationController alloc] initWithRootViewController:registVC];
    naVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self.navigationController presentViewController:naVC animated:YES completion:nil];
}

#pragma mark --call back keyboard
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
