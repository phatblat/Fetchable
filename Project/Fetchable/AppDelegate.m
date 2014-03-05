//
//  AppDelegate.m
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
    [MagicalRecord setupCoreDataStackWithInMemoryStore];

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
