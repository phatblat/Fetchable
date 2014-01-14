//
//  FBLFetchedResultsTableViewDataSource.m
//  Fetchable
//
//  Created by Ben Chatelain on 12/17/2013.
//  Copyright (c) 2013 Kaiser Permanente. All rights reserved.
//

#import "FBLFetchedResultsTableViewDataSource.h"
#import <CoreData+MagicalRecord.h>

@interface FBLFetchedResultsTableViewDataSource ()

@property (strong, nonatomic) NSFetchedResultsController *frc;
@property (strong, nonatomic) NSString *cellIdentifier;
@property (strong, nonatomic) ConfigureCellBlock configureCellBlock;

@end

@implementation FBLFetchedResultsTableViewDataSource

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

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.frc sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[[self.frc sections] objectAtIndex:section] objects] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
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
