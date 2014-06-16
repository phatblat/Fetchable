// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Format.h instead.

#import <CoreData/CoreData.h>

extern const struct FormatRelationships {
	__unsafe_unretained NSString *books;
} FormatRelationships;

@class Book;

@interface FormatID : NSManagedObjectID {}
@end

@interface _Format : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (FormatID*)objectID;

@property (nonatomic, strong) NSSet *books;

- (NSMutableSet*)booksSet;

@end

@interface _Format (BooksCoreDataGeneratedAccessors)
- (void)addBooks:(NSSet*)value_;
- (void)removeBooks:(NSSet*)value_;
- (void)addBooksObject:(Book*)value_;
- (void)removeBooksObject:(Book*)value_;
@end

@interface _Format (CoreDataGeneratedPrimitiveAccessors)

- (NSMutableSet*)primitiveBooks;
- (void)setPrimitiveBooks:(NSMutableSet*)value;

@end
