//
//  RegisterViewController.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize firstNameField, lastNameField, passwordField, confirmPasswordField, emailField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) textShouldReturn : (UITextField*) textField
{
    [textField resignFirstResponder];
    return NO;
}


-(BOOL) isValidEmail : (NSString*) checkEmail
{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkEmail];

}


- (IBAction)doneButton:(id)sender {
    
    
    if(![passwordField.text isEqualToString:confirmPasswordField.text])
    {
        UIAlertView *alertPassword = [[UIAlertView alloc]initWithTitle:@"Warning!" message:@"Password does not match" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertPassword show];
    }
    
    else if(![self isValidEmail:emailField.text])
    {
        UIAlertView *alertEmail =  [[UIAlertView alloc]initWithTitle:@"Invalid" message:@"The email Id entered is Invalid" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertEmail show];
    }
    
    else if ([emailField.text isEqualToString:@""] || [firstNameField.text isEqualToString:@""] || [passwordField.text isEqualToString:@""] || [lastNameField.text isEqualToString:@""] || [confirmPasswordField.text isEqualToString:@""])
        
    {
        UIAlertView *alertEmptyValidations = [[UIAlertView alloc]initWithTitle:@"Check Fields" message:@"Field/s is/are Empty" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertEmptyValidations show];
    }
    else
    {
        PFUser *newUser = [PFUser user];
        newUser.username = emailField.text;
        newUser.email = emailField.text;
        newUser.password = passwordField.text;
        
        
        // other fields can be set just like with PFObject
        newUser[@"firstName"] = firstNameField.text;
        newUser[@"lastName"] = lastNameField.text;
        
        
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if(!error)
            {
                UIAlertView *alertRegistration  =  [[UIAlertView alloc]initWithTitle:@"Done!" message:@"Registration Successfull" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                [alertRegistration show];
                NSLog(@"Registration Successfull");
                [self dismissViewControllerAnimated:YES completion:nil];
//                [self performSegueWithIdentifier:@"loginSuccess" sender:self];
            }
            else
            {
                UIAlertView *alertFailedRegistration = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Registration Failed" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                [alertFailedRegistration show];
                NSLog(@"There was an error in Registration");
            }
        }];
        
    }
    
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
