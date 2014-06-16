// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Publisher.h instead.

#import <CoreData/CoreData.h>

extern const struct PublisherAttributes {
	__unsafe_unretained NSString *name;
} PublisherAttributes;

extern const struct PublisherRelationships {
	__unsafe_unretained NSString *books;
} PublisherRelationships;

@class Book;

@interface PublisherID : NSManagedObjectID {}
@end

@interface _Publisher : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PublisherID*)objectID;

@property (nonatomic, strong) NSString * name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *books;

- (NSMutableSet*)booksSet;

@end

@interface _Publisher (BooksCoreDataGeneratedAccessors)
- (void)addBooks:(NSSet*)value_;
- (void)removeBooks:(NSSet*)value_;
- (void)addBooksObject:(Book*)value_;
- (void)removeBooksObject:(Book*)value_;
@end

@interface _Publisher (CoreDataGeneratedPrimitiveAccessors)

- (NSString *)primitiveName;
- (void)setPrimitiveName:(NSString *)value;

- (NSMutableSet*)primitiveBooks;
- (void)setPrimitiveBooks:(NSMutableSet*)value;

@end
