//
//  WelcomeViewController.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)dealloc {
    [_welcomeView release];
    [super dealloc];
}

- (void)loadView {
    _welcomeView = [[WelcomeView alloc] initWithFrame:[[UIScreen mainScreen] bounds] welcomeText:@"Welcome~" font:[UIFont boldSystemFontOfSize:18] title:@"Back"];
    self.view = _welcomeView;
    [_welcomeView.backButton addTarget:self action:@selector(backToLoginView) forControlEvents:UIControlEventTouchUpInside];
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
#pragma mark --back to login view method
- (void)backToLoginView {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
