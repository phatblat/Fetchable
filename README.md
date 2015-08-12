# Fetchable

[![Version](http://cocoapod-badges.herokuapp.com/v/Fetchable/badge.png)](http://cocoadocs.org/docsets/Fetchable)
[![Platform](http://cocoapod-badges.herokuapp.com/p/Fetchable/badge.png)](http://cocoadocs.org/docsets/Fetchable)

This is a small pod with a default implementation of the `NSFetchedResultsControllerDelegate` protocol. There is one for `UITableViewController` and one for `UICollectionViewController` as well. An FRC delegate implementation can be much more efficient at at updating these "list-o-things" views when compared to reloading the entire table (and triggering much larger redraws).

This pod effectively eliminates the boilerplate code to connect an `NSFetchedResultsController` and pipe its updates into one of the aforementioned view controllers. It goes one step further in extracting the DataSource protocol implementations into separate classes to make it easier for you to customize them by providing your own implementation.

## Usage

To run the example project; clone the repo, and run `pod install` from the Example directory first.

`pod try Fetchable` is a short way to do this, but still doesn't run `pod install` for you.

## Requirements

* iOS >= 6.0

## Istallation

### Step 1

Fetchable is available through [CocoaPods](http://cocoapods.org), to install it simply add the following line to your Podfile:

    pod "Fetchable"

### Step 2

Create a new Cocoa Touch class that extends either `FBLFetchedResultsTableViewController` or `FBLFetchedResultsCollectionViewController`.

### Step 3

In your `-viewDidLoad` method, put some code like the following:

```objc
#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    FBLConfigureCellBlock configureCell = ^(UICollectionViewCell *collectionCell, id item) {
        YourCustomCollectionViewCell *cell = (YourCustomCollectionViewCell *)collectionCell;
        [cell prepareForReuse];
        ModelClass *modelInstance = (ModelClass *)item;

        cell.textLabel.text = repo.name;
    };

    NSFetchedResultsController *frc = [ModelClass MR_fetchAllSortedBy:@"name" ascending:YES
                                                        withPredicate:nil
                                                              groupBy:nil delegate:self];

    self.dataSource = [[FBLFetchedResultsCollectionViewDataSource alloc] initWithFetchedResultsController:frc
                                                                                           cellIdentifier:@"CellReuseIdentifier"
                                                                                       configureCellBlock:configureCell];
}
```

This code
1. Creates an `FBLConfigureCellBlock` which will work with the instance of the model class you are using.
2. Configures an `NSFetchedResultsController` (using MagicalRecord to hide CoreData boilerplate) to fetch all `ModelClass` objects from the context and sort them by the `name` property.
3. Stand up and hold onto an `FBLFetchedResults*DataSource` which will use the previous two objects and a fixed cell reuse identifier.

## Known Issues

### Single Cell Identifier

Only one cell identifier is currently supported. It would be ideal to be able to vary the cell identifier by some attribute from the model. If you get to this before I do, send me a pull request!

### FRC Radar

NSFetchedResultsController does not get refreshed for added relationship
* [rdar://11541277](http://openradar.appspot.com/11541277)

## Author

Ben Chatelain, benchatelain@gmail.com
[@phatblat](https://twitter.com/phatblat)

## License

Fetchable is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for rights and limitations.

