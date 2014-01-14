//
//  FBLFetchedResultsCollectionViewDataSource.m
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2013 Ben Chatelain. All rights reserved.
//

#import "FBLFetchedResultsCollectionViewDataSource.h"
#import <CoreData+MagicalRecord.h>

@interface FBLFetchedResultsCollectionViewDataSource ()

@property (strong, nonatomic) NSFetchedResultsController *frc;
@property (strong, nonatomic) NSString *cellIdentifier;
@property (strong, nonatomic) ConfigureCellBlock configureCellBlock;

@end

@implementation FBLFetchedResultsCollectionViewDataSource

- (instancetype)initWithFetchedResultsController:(NSFetchedResultsController *)frc
                                  cellIdentifier:(NSString *)cellIdentifier
                              configureCellBlock:(ConfigureCellBlock)configureCellBlock
{
    if ((self = [super init])) {
        // TODO: Validate parameters
        self.frc = frc;
        self.cellIdentifier = cellIdentifier;
        self.configureCellBlock = configureCellBlock;
    }
    return self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[self.frc fetchedObjects] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier
                                                                           forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

#pragma mark - Convenience Methods

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return [[[[self.frc sections] objectAtIndex:indexPath.section] objects] objectAtIndex:indexPath.row];
}

@end
