//
//  FBLFetchedResultsCollectionViewDataSource.h
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2013 Ben Chatelain. All rights reserved.
//

@import UIKit;
@import CoreData.NSFetchedResultsController;

typedef void (^ConfigureCellBlock)(UICollectionViewCell *, id);

/**
 A generic, reusable implementation of UICollectionViewDataSource for collections backed by an NSFetchedResultsController. After initializing this class, make sure to store a strong reference to it somewhere so that it doesn't get deallocated by ARC while it's still needed. The collectionView.dataSource outlet is weak and will not keep created instances around.

 Note that currently, this class only supports tables which use a single cell identifier for all cells.
 */
@interface FBLFetchedResultsCollectionViewDataSource : NSObject <UICollectionViewDataSource>

/**
 This is not the initializer you're looking for.
 */
- (id)init __attribute__((unavailable("Designated Initializer initWithFetchedResultsController:cellIdentifier:configureCellBlock: must be used.")));

#pragma mark - Designated Initializer

/**
 Designated initializer which simply stores the given parameters, required for its operation.

 @param frc A primed NSFetchedResultsController instance.
 @param cellIdentifier The NSString used to identify the cell in the storyboard
 @param configureCellBlock A block of type ConfigureCellBlock which is used to hold the custom configuration logic
 */
- (instancetype)initWithFetchedResultsController:(NSFetchedResultsController *)frc
                                  cellIdentifier:(NSString *)cellIdentifier
                              configureCellBlock:(ConfigureCellBlock)configureCellBlock;

#pragma mark - Convenience Methods

/**
 Handy method for retrieving the item from the fetched results controller using an indexPath

 @param indexPath The NSIndexPath of the item to be retrieved.
 @return The NSManagedObject from the fetched results controller that corresponds to the given indexPath. Returned as an 'id' reference, so callers will need to cast to the expected type.
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
