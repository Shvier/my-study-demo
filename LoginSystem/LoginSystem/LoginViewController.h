//
//  LoginViewController.h
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginView.h"

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) LoginView *loginView;

@end
