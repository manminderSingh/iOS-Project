//
//  ViewController.m
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/27/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    

}

@end
