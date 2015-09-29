//
//  LoginController.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void) viewDidAppear:(BOOL)animated
//{
//    PFUser *user = [PFUser currentUser];
//    if(user.username != nil)
//    {
//        [self performSegueWithIdentifier:@"loginSuccess" sender:self];
//    }
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)registerAction:(id)sender {
    [_userNameField resignFirstResponder];
    [_emailField resignFirstResponder];
    [_passwordField resignFirstResponder];
    [_reEnterPasswordField resignFirstResponder];
    [self checkFieldsAreComplete];
}


-(void) checkFieldsAreComplete
{
    if(([_userNameField.text isEqualToString:@""]) || ([_emailField.text isEqualToString:@""]) || ([_passwordField.text isEqualToString:@""]) || ([_reEnterPasswordField.text isEqualToString:@""]))
    {
        UIAlertView *alertEmpty = [[UIAlertView alloc] initWithTitle:@"Incomplete Fields!" message:@"Please complete all Fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertEmpty show];
        
    }
    
    else
    {
        [self checkPasswordsMatch];
    }
}


-(void) checkPasswordsMatch
{
    if(![_passwordField.text isEqualToString: _reEnterPasswordField.text])
    {
        UIAlertView *passwordMissMatch = [[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Password do not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [passwordMissMatch show];
    }
    
    else
        
    {
        [self registerNewUser];
    }
    
}

-(void) registerNewUser
{
    PFUser *newUser;
    newUser.username = _userNameField.text;
    newUser.email = _emailField.text;
    newUser.password = _passwordField.text;
    
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if(!error)
        {
            NSLog(@"Registration Successfull");
            [self performSegueWithIdentifier:@"loginSuccess" sender:self];
        }
        else
        {
            NSLog(@"There was an error in Registration");
        }
    }];
    
}


@end
