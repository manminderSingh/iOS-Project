//
//  AddApartmentController2.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "AddApartmentController2.h"

@interface AddApartmentController2 ()

@end

@implementation AddApartmentController2

//@synthesize studioField, studioPriceField, oneBrField, oneBrPriceField, twoBrField, twoBrPriceField, threeBrField, threeBrPriceField, contactNumber, emailAddress, aboutUs, description1;

@synthesize popupPicker, typeAttribute, priceAttribute,tempApartment;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setModalPresentationStyle:UIModalPresentationCurrentContext];
    _studioField.text = [self typeAttribute];
    _studioPriceField.text = [self priceAttribute];
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

- (IBAction)studioButton:(id)sender {
    
    _studioField.text = [self typeAttribute];
    _studioPriceField.text = [self priceAttribute];
    
}
- (IBAction)twoBrButton:(id)sender {
}
- (IBAction)oneBrButton:(id)sender {
}
- (IBAction)threeeBrButton:(id)sender {
}
- (IBAction)nextButton:(id)sender {
    tempApartment[@"Studio"] = _studioField.text;
    tempApartment[@"StudioPrice"] = _studioPriceField.text;
    
    tempApartment[@"1 BR"] = _oneBrField.text;
    
    tempApartment[@"1 BrPrice"] = _oneBrPriceField;
    
    tempApartment[@"2 BR"] = _twoBrField.text;
    
    tempApartment[@"2 BrPrice"] = _twoBrPriceField.text;
    
    tempApartment [@"3 BR"] = _threeBrField.text;
    
    tempApartment [@"3 BrPrice "] = _threeBrPriceField.text;
    
    tempApartment [@"Contact Number"] = _contactNumber.text;
    tempApartment [@"Email Address"] = _emailAddress.text;
    tempApartment [@"Description 1"] = _description1.text;
    tempApartment [@"About us"] = _aboutUs.text;
    
    
    [self performSegueWithIdentifier:@"addThird" sender:sender];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"addThird"]) {
        
        // Get destination view
        AddApartmentController3 *apvc3 = [segue destinationViewController];
        apvc3.tempApartment3 = tempApartment;
    }
}


- (IBAction)previousButton:(id)sender {
    
     [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)enterHere:(id)sender {
    
    
    
}
@end
