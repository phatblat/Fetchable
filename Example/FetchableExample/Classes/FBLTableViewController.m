//
//  FBLTableViewController.m
//  Fetchable
//
//  Created by Ben Chatelain on 2/19/14.
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

#import "FBLTableViewController.h"
#import "Book.h"
#import "FBLBookViewController.h"
#import <FBLFetchedResultsTableViewDataSource.h>
#import <CoreData+MagicalRecord.h>

@implementation FBLTableViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    FBLConfigureCellBlock configureCellBlock = ^(UITableViewCell *tableCell, id item) {
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BookDetails"]) {
        // Pass off the selected entity
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Book *book = [self.dataSource itemAtIndexPath:indexPath];
        ((FBLBookViewController *)segue.destinationViewController).book = book;
    }
}

@end
