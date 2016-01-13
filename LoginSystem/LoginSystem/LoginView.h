//
//  LoginView.h
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView

@property (retain, nonatomic) UIButton *loginButton;
@property (retain, nonatomic) UIButton *registButton;
@property (retain, nonatomic) UITextField *usernameText;
@property (retain, nonatomic) UITextField *passwordText;

- (instancetype)initWithFrame:(CGRect)frame usernamePlaceholder:(NSString *)usernamePlaceholder passwordPlaceholder:(NSString *)passwordPlaceholder font:(UIFont *)font borderStyle:(UITextBorderStyle)borderStyle secureTextEntry:(BOOL)secureTextEntry usernameKeyboardType:(UIKeyboardType)usernameKeyboardType passwordKeyboardType:(UIKeyboardType)passwordKeyboardType loginTitle:(NSString *)loginTitle registTitle:(NSString *)registTitle;

@end
