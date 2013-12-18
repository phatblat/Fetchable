//
//  FBLFetchedResultsTableViewController.h
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2013 Ben Chatelain. All rights reserved.
//

@import CoreData;
@import UIKit.UITableViewController;

@class FBLFetchedResultsTableViewDataSource;

/**
 A basic extension of UITableViewController which implements the NSFetchedResultsControllerDelegate methods necessary for updating the tableView as the data changes.
 */
@interface FBLFetchedResultsTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

/**
 A strong reference to the data source is required to keep it from disappearing since all other delegate references are weak.
 */
@property (strong, nonatomic) FBLFetchedResultsTableViewDataSource *dataSource;

@end
