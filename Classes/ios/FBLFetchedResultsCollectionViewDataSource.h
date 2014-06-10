//
//  FBLFetchedResultsCollectionViewDataSource.h
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2014 Ben Chatelain
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//

#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
//@import UIKit;
//@import CoreData.NSFetchedResultsController;

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

/**
 Handy method for looking up the indexpath for a given item.
 @param item The item to look for
 @return the NSIndexPath of the given item if found; nil if not found
 */
- (NSIndexPath *)indexPathForItem:(id)item;

@end
