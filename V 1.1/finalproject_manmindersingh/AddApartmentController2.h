//
//  AddApartmentController2.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "AddApartmentController3.h"

@class PickerView;
@interface AddApartmentController2 : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *studioField;

@property (weak, nonatomic) IBOutlet UITextField *studioPriceField;

- (IBAction)studioButton:(id)sender;

//  - - - - - - - - - -

@property (weak, nonatomic) IBOutlet UITextField *oneBrField;

@property (weak, nonatomic) IBOutlet UITextField *oneBrPriceField;

- (IBAction)oneBrButton:(id)sender;


// - - - - - - - - - - - - -
@property (weak, nonatomic) IBOutlet UITextField *twoBrField;

@property (weak, nonatomic) IBOutlet UITextField *twoBrPriceField;

- (IBAction)twoBrButton:(id)sender;

// - - - - - - - - - - - - - - -

@property (weak, nonatomic) IBOutlet UITextField *threeBrField;

@property (weak, nonatomic) IBOutlet UITextField *threeBrPriceField;

- (IBAction)threeeBrButton:(id)sender;


// - - -- - - - - - - - - - - -- - -

@property (weak, nonatomic) IBOutlet UITextField *contactNumber;


@property (weak, nonatomic) IBOutlet UITextField *emailAddress;

@property (weak, nonatomic) IBOutlet UITextField *description1;


@property (weak, nonatomic) IBOutlet UITextField *aboutUs;


// - - - - - - - - - - - - - - - - - -
- (IBAction)nextButton:(id)sender;

- (IBAction)previousButton:(id)sender;

@property NSString* typeAttribute;
@property NSString* priceAttribute;

@property (strong, nonatomic) PFObject * tempApartment;


@property (nonatomic, retain) IBOutlet UIView *popupPicker;
- (IBAction)enterHere:(id)sender;
@end
