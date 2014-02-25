//
//  AppDelegate.m
//  Fetchable
//
//  Created by Ben Chatelain on 2/19/14.
//  Copyright (c) 2014 @phatblat. All rights reserved.
//

#import "AppDelegate.h"
#import "Book.h"
#import <CoreData+MagicalRecord.h>

@implementation AppDelegate

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setupData];

    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [MagicalRecord cleanUp];
}

#pragma mark - Data

- (void)setupData
{
    [MagicalRecord setupCoreDataStack];

    Book *book;
//    book = [Book MR_importFromObject:@{ @"title": @"Core Data: Data Storage and Management for iOS, OS X, and iCloud",
//                                        @"asin": @"B00DZ48BM2",
//                                        @"fileSize": @"1516",
//                                        @"fileSizeUnits": @"KB",
//                                        @"pageCount": @"256",
//                                        @"price": @"28.51",
//                                        @"publishDate": NSNull,
//                                      }];

    book = [Book MR_createEntity];
    book.title = @"Core Data";

    [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreWithCompletion:nil];
}

@end
