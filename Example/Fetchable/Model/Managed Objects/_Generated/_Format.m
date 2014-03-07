// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Format.m instead.

#import "_Format.h"

const struct FormatAttributes FormatAttributes = {
};

const struct FormatRelationships FormatRelationships = {
	.books = @"books",
};

const struct FormatFetchedProperties FormatFetchedProperties = {
};

@implementation FormatID
@end

@implementation _Format

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Format" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Format";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Format" inManagedObjectContext:moc_];
}

- (FormatID*)objectID {
	return (FormatID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic books;

	
- (NSMutableSet*)booksSet {
	[self willAccessValueForKey:@"books"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"books"];
  
	[self didAccessValueForKey:@"books"];
	return result;
}
	






@end
