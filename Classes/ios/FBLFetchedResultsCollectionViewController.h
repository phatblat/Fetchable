//
//  FBLFetchedResultsCollectionViewController.h
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2013 Ben Chatelain. All rights reserved.
//

@import CoreData;
@import UIKit.UICollectionViewController;

@class FBLFetchedResultsCollectionViewDataSource;

/**
 A basic extension of UICollectionViewController which implements the NSFetchedResultsControllerDelegate methods necessary for updating the tableView as the data changes.
 */
@interface FBLFetchedResultsCollectionViewController : UICollectionViewController <NSFetchedResultsControllerDelegate>

/**
 A strong reference to the data source is required to keep it from disappearing since all other delegate references are weak.
 */
@property (strong, nonatomic) FBLFetchedResultsCollectionViewDataSource *dataSource;

@end
