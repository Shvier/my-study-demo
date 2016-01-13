//
//  RegistView.h
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistView : UIView

@property (retain, nonatomic) UITextField *usernameText;
@property (retain, nonatomic) UITextField *passwordText;
@property (retain, nonatomic) UITextField *confirmpwdText;
@property (retain, nonatomic) UIButton *backButton;

- (instancetype)initWithFrame:(CGRect)frame usernamePlaceholder:(NSString *)usernamePlaceholder passwordPlaceholder:(NSString *)passwordPlaceholder confirmpwdPlaceholder:(NSString *)confirmpwdPlaceholder font:(UIFont *)font borderStyle:(UITextBorderStyle)borderStyle backTitle:(NSString *)backTitle secureTextEntry:(BOOL)secureTextEntry ;

@end
