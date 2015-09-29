//
//  PickerView.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AddApartmentController2.h"

#define TYPE 0
#define PRICE 1

#define __POPUP_DATE_PICKER_DEFAULT_ANIMATION_DURATION 0.3


@interface PickerView : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>


@property (nonatomic,strong) NSArray *typeOfApartment;
@property (nonatomic, strong) NSArray *priceForApartment;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)hidePicker:(id)sender;
- (IBAction)doneButton:(id)sender;

@end






