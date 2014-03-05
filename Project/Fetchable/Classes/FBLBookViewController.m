//
//  FBLBookViewController.m
//  Fetchable
//
//  Created by Ben Chatelain on 3/5/14.
//
//

#import "FBLBookViewController.h"

#import "Book.h"

@implementation FBLBookViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = self.book.title;
}

@end
