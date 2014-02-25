//
//  FBLTableViewController.m
//  Fetchable
//
//  Created by Ben Chatelain on 2/19/14.
//  Copyright (c) 2014 @phatblat. All rights reserved.
//

#import "FBLTableViewController.h"
#import "Book.h"
#import <FBLFetchedResultsTableViewDataSource.h>
#import <CoreData+MagicalRecord.h>

@implementation FBLTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    ConfigureCellBlock configureCellBlock = ^(UITableViewCell *tableCell, id item) {
        Book *book = (Book *)item;
        tableCell.textLabel.text = book.title;
    };

    NSFetchedResultsController *frc = [Book MR_fetchAllSortedBy:@"title" ascending:YES
                                                  withPredicate:nil
                                                        groupBy:nil delegate:self];

    self.dataSource = [[FBLFetchedResultsTableViewDataSource alloc] initWithFetchedResultsController:frc
                                                                                      cellIdentifier:@"BookCell"
                                                                                  configureCellBlock:configureCellBlock];
}

@end
