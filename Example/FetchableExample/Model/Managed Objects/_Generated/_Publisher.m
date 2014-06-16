// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Publisher.m instead.

#import "_Publisher.h"

const struct PublisherAttributes PublisherAttributes = {
	.name = @"name",
};

const struct PublisherRelationships PublisherRelationships = {
	.books = @"books",
};

@implementation PublisherID
@end

@implementation _Publisher

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Publisher" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Publisher";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Publisher" inManagedObjectContext:moc_];
}

- (PublisherID*)objectID {
	return (PublisherID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic books;

- (NSMutableSet*)booksSet {
	[self willAccessValueForKey:@"books"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"books"];

	[self didAccessValueForKey:@"books"];
	return result;
}

@end

