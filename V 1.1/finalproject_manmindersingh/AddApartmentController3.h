//
//  AddApartmentController3.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface AddApartmentController3 : UIViewController<UIImagePickerControllerDelegate>

@property (weak,nonatomic) PFObject *tempApartment3;

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

@property (strong,nonatomic) PFFile *tempImage;

- (IBAction)cameraButton1:(id)sender;

- (IBAction)cameraButton2:(id)sender;

- (IBAction)cameraButton3:(id)sender;



@end
