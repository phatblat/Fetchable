//
//  FBLDataManager.h
//  Fetchable
//
//  Created by Ben Chatelain on 3/5/14.
//
//

#import <Foundation/Foundation.h>

@interface FBLDataManager : NSObject

/**
 Sets up the Core Data stack and inserts some initial data into the context.
 */
+ (void)setup;

/**
 Tears down the Core Data stack.
 */
+ (void)cleanUp;

@end
