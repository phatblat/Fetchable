//
//  FBLFetchedResultsTableViewDataSource.m
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

#import "FBLFetchedResultsTableViewDataSource.h"

@interface FBLFetchedResultsTableViewDataSource ()

@property (strong, nonatomic) NSFetchedResultsController *frc;
@property (strong, nonatomic) NSString *cellIdentifier;
@property (strong, nonatomic) ConfigureCellBlock configureCellBlock;

@end

@implementation FBLFetchedResultsTableViewDataSource

#pragma mark - Designated Initializer

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

#pragma mark - NSObject

- (void)dealloc
{
    _frc.delegate = nil;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.frc sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.frc sections][section] numberOfObjects];
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
    return [self.frc objectAtIndexPath:indexPath];
}

- (NSIndexPath *)indexPathForItem:(id)item
{
    return [self.frc indexPathForObject:item];
}

@end
