//
//  MasterViewController.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController
@synthesize emailField,passwordField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)signInButton:(id)sender {
    
    NSString *emailIDEntered = emailField.text;
    NSString *passwordEntered = passwordField.text;
    
   [PFUser logInWithUsernameInBackground:emailIDEntered password:passwordEntered block:^(PFUser *user, NSError *error) {
        if(user)
        {
            PFObject *object = (PFObject*) user;
            [self performSegueWithIdentifier:@"login" sender:object];
        }
       else
       {
           UIAlertView *alertError = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Email Id/Password does not match" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil ];
           [alertError show];
       }
   }] ;
    
}
@end
