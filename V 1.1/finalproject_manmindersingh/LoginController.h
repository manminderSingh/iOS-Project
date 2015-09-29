//
//  LoginController.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface LoginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reEnterPasswordField;
- (IBAction)registerAction:(id)sender;

@end
