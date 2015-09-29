//
//  AddApartmentController.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/29/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "AddApartmentController.h"

@interface AddApartmentController ()

@property (strong, nonatomic) PFObject *apartment;
@end

@implementation AddApartmentController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButton:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)nextButton:(id)sender {
    
    _apartment = [PFObject objectWithClassName:@"Apartment"];
    
    _apartment [@"apartmentName"] = self.apartmentName.text;
    _apartment [@"apartmentAddress"] = self.apartmentAddress.text;
    _apartment [@"City"] = self.city.text;
    _apartment [@"State"] = self.state.text;
    _apartment [@"Country"] = self.country.text;
    _apartment [@"Zip Code"] = self.zipCode.text;
    
    [self performSegueWithIdentifier:@"addSecondPage" sender:sender];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"addSecondPage"])
    {
        AddApartmentController2 *avcp = [[AddApartmentController2 alloc]init];
        avcp.tempApartment = _apartment;
    }
}



#pragma mark- Text field Editing

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    int movementDistance = 50;
    
    if(textField.tag == 1){
        movementDistance = 20;
    }
    if(textField.tag == 2){
        movementDistance = 40;
    }
    if(textField.tag == 3){
        movementDistance = 60;
    }
    if(textField.tag == 4){
        movementDistance = 80;
    }
    if(textField.tag == 5){
        movementDistance = 140;
    }
    if(textField.tag == 6){
        movementDistance = 140;
    }
    
    const float movementDuration = 0.3f;
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}



@end
