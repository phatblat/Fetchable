//
//  FBLBookViewController.m
//  Fetchable
//
//  Created by Ben Chatelain on 3/5/14.
//
//

#import "FBLBookViewController.h"
#import "Book.h"


@interface FBLBookViewController ()

@property (weak, nonatomic) IBOutlet UILabel *bookTitle;
@property (weak, nonatomic) IBOutlet UIImageView *bookImage;

@end

@implementation FBLBookViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = self.book.title;
    self.bookTitle.text = self.book.title;
    self.bookImage.image = [UIImage imageNamed:self.book.image];
}

@end
