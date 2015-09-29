//
//  PickerView.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "PickerView.h"

@interface PickerView ()



@end


@implementation PickerView

@synthesize typeOfApartment, priceForApartment, pickerView;
//@synthesize datePicker = _datePicker;
//@synthesize doneButton = _doneButton;
//@synthesize toolbar = _toolbar;
//@synthesize date;
//@synthesize animationDuration = _animationDuration;
//@synthesize animationDelay = _animationDelay;
//@synthesize delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *type = [[NSBundle mainBundle]pathForResource:@"TypeOfApartment" ofType:@"plist"];
    typeOfApartment = [[NSArray alloc]initWithContentsOfFile:type];
    NSString *pricing = [[NSBundle mainBundle]pathForResource:@"PriceList" ofType:@"plist"];
    priceForApartment = [[NSArray alloc]initWithContentsOfFile:pricing];
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







#pragma UIPickerView and UIPickerDataSource and Delegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component==TYPE)
        return [typeOfApartment count];
    else
        return [priceForApartment count];
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component==TYPE)
        return typeOfApartment[row];
    else
        return priceForApartment[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
}

//-(void) selectValues
//{
//    NSInteger typeAtNumberArray = [pickerView selectedRowInComponent: TYPE];
//    
//    NSInteger priceAtNumberArray = [pickerView selectedRowInComponent: PRICE];
//    
//    NSString *type = typeOfApartment[typeAtNumberArray];
//    
//    NSString *price = priceForApartment [priceAtNumberArray];
//}





- (IBAction)hidePicker:(id)sender {
    
   
    
    [self dismissViewControllerAnimated:YES completion:Nil];
    

}

- (IBAction)doneButton:(id)sender {
    
    AddApartmentController2 *adc = [[AddApartmentController2 alloc] init];
    
    NSInteger typeAtNumberArray = [pickerView selectedRowInComponent: TYPE];
    
    NSInteger priceAtNumberArray = [pickerView selectedRowInComponent: PRICE];
    
    NSString *type = typeOfApartment[typeAtNumberArray];
    
    NSString *price = priceForApartment [priceAtNumberArray];
    
    adc.typeAttribute = type;
    adc.priceAttribute = price;

}
@end
