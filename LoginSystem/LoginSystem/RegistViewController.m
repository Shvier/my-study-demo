//
//  RegistViewController.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "RegistViewController.h"

@interface RegistViewController ()

@end

@implementation RegistViewController

- (void)dealloc {
    [_registView release];
    [super dealloc];
}

- (void)loadView {
    _registView = [[RegistView alloc] initWithFrame:[[UIScreen mainScreen] bounds] usernamePlaceholder:@"please input username" passwordPlaceholder:@"please input password" confirmpwdPlaceholder:@"input password again to confirm" font:[UIFont boldSystemFontOfSize:18] borderStyle:UITextBorderStyleRoundedRect backTitle:@"Back" secureTextEntry:YES];
    self.view = _registView;
    
    [_registView.backButton addTarget:self action:@selector(backToLoginView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *cancelBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    self.navigationItem.leftBarButtonItem = cancelBarButton;
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
#pragma mark --cancel method
- (void)cancel {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark --back to login view method
- (void)backToLoginView {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
