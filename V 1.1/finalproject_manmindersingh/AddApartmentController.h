//
//  AddApartmentController.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/29/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "AddApartmentController2.h"

@interface AddApartmentController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

- (IBAction)backButton:(id)sender;

- (IBAction)nextButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *apartmentName;

@property (weak, nonatomic) IBOutlet UITextField *apartmentAddress;

@property (weak, nonatomic) IBOutlet UILabel *city;

@property (weak, nonatomic) IBOutlet UITextField *state;

@property (weak, nonatomic) IBOutlet UITextField *country;

@property (weak, nonatomic) IBOutlet UITextField *zipCode;

@property (weak,nonatomic) AddApartmentController2 *apcv2;

@end
