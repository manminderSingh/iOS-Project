//
//  ApartmentListTableTableViewController.h
//  FinalProject_ManminderSingh
//
//  Created by Manminder Singh Sodhi on 11/29/14.
//  Copyright (c) 2014 Manminder Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>

@interface ApartmentListTableTableViewController : PFQueryTableViewController <UISearchBarDelegate, UISearchControllerDelegate, UISearchDisplayDelegate>

@property (strong, nonatomic) NSMutableArray *apartmentList;
@property (strong, nonatomic) PFObject *pfTempList;
@property (nonatomic, retain) NSMutableArray *filteredApartmentList;
@property (nonatomic,copy) NSString *savedSearchTerm;
@property (nonatomic) NSInteger savedScopeButtonIndex;
@property (nonatomic) BOOL searchWasActive;


@end
