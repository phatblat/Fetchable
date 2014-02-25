// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Book.m instead.

#import "_Book.h"

const struct BookAttributes BookAttributes = {
	.asin = @"asin",
	.fileSize = @"fileSize",
	.fileSizeUnits = @"fileSizeUnits",
	.pageCount = @"pageCount",
	.publishDate = @"publishDate",
	.title = @"title",
};

const struct BookRelationships BookRelationships = {
	.author = @"author",
	.format = @"format",
	.publisher = @"publisher",
};

const struct BookFetchedProperties BookFetchedProperties = {
};

@implementation BookID
@end

@implementation _Book

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Book";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Book" inManagedObjectContext:moc_];
}

- (BookID*)objectID {
	return (BookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"pageCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pageCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic asin;






@dynamic fileSize;






@dynamic fileSizeUnits;






@dynamic pageCount;



- (int16_t)pageCountValue {
	NSNumber *result = [self pageCount];
	return [result shortValue];
}

- (void)setPageCountValue:(int16_t)value_ {
	[self setPageCount:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePageCountValue {
	NSNumber *result = [self primitivePageCount];
	return [result shortValue];
}

- (void)setPrimitivePageCountValue:(int16_t)value_ {
	[self setPrimitivePageCount:[NSNumber numberWithShort:value_]];
}





@dynamic publishDate;






@dynamic title;






@dynamic author;

	

@dynamic format;

	

@dynamic publisher;

	






@end
