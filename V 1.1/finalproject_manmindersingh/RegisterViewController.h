//
//  RegisterViewController.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordField;

- (IBAction)doneButton:(id)sender;

- (IBAction)cancelButton:(id)sender;



@end


@protocol RegisterViewControllerDelegate
-(void) RegisterViewControllerDidSave;
@end
