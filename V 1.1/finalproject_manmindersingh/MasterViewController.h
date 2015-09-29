//
//  MasterViewController.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/28/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "RegisterViewController.h"

@interface MasterViewController : UIViewController
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)signInButton:(id)sender;

@end
