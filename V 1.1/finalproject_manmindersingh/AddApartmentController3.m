//
//  AddApartmentController3.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/30/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "AddApartmentController3.h"

@interface AddApartmentController3 ()

@end

@implementation AddApartmentController3
@synthesize tempImage;

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

- (IBAction)cameraButton1:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (IBAction)cameraButton2:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (IBAction)cameraButton3:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image1 = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image2 = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image3 = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.imageView1.image = image1;
    NSData *imageData1 = UIImageJPEGRepresentation(image1, 0.05f);
    
    self.imageView2.image = image2;
    NSData *imageData2 = UIImageJPEGRepresentation(image2, 0.05f);
    
    self.imageView3.image = image2;
    NSData *imageData3 = UIImageJPEGRepresentation(image3, 0.05f);
    
    [self uploadImage1:imageData1];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self uploadImage2:imageData2];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self uploadImage3:imageData3];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) uploadImage1: (NSData *) imageData{
    
    PFFile *imageFile = [PFFile fileWithName:@"Image1.jpg" data:imageData];
    
    // Save the image to Parse
    
    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            tempImage = imageFile;
            
        }
    }];
}

-(void) uploadImage2: (NSData *) imageData{
    
    PFFile *imageFile = [PFFile fileWithName:@"Image2.jpg" data:imageData];
    
    // Save the image to Parse
    
    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            tempImage = imageFile;
            
        }
    }];
}

-(void) uploadImage3: (NSData *) imageData{
    
    PFFile *imageFile = [PFFile fileWithName:@"Image3.jpg" data:imageData];
    
    // Save the image to Parse
    
    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            tempImage = imageFile;
            
        }
    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

@end
