// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Book.m instead.

#import "_Book.h"

const struct BookAttributes BookAttributes = {
	.asin = @"asin",
	.bookID = @"bookID",
	.fileSize = @"fileSize",
	.fileSizeUnits = @"fileSizeUnits",
	.image = @"image",
	.pageCount = @"pageCount",
	.price = @"price",
	.publishDate = @"publishDate",
	.title = @"title",
	.url = @"url",
};

const struct BookRelationships BookRelationships = {
	.author = @"author",
	.format = @"format",
	.publisher = @"publisher",
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

	if ([key isEqualToString:@"bookIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"bookID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fileSizeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fileSize"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pageCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pageCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"priceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"price"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic asin;

@dynamic bookID;

- (int16_t)bookIDValue {
	NSNumber *result = [self bookID];
	return [result shortValue];
}

- (void)setBookIDValue:(int16_t)value_ {
	[self setBookID:@(value_)];
}

- (int16_t)primitiveBookIDValue {
	NSNumber *result = [self primitiveBookID];
	return [result shortValue];
}

- (void)setPrimitiveBookIDValue:(int16_t)value_ {
	[self setPrimitiveBookID:@(value_)];
}

@dynamic fileSize;

- (float)fileSizeValue {
	NSNumber *result = [self fileSize];
	return [result floatValue];
}

- (void)setFileSizeValue:(float)value_ {
	[self setFileSize:@(value_)];
}

- (float)primitiveFileSizeValue {
	NSNumber *result = [self primitiveFileSize];
	return [result floatValue];
}

- (void)setPrimitiveFileSizeValue:(float)value_ {
	[self setPrimitiveFileSize:@(value_)];
}

@dynamic fileSizeUnits;

@dynamic image;

@dynamic pageCount;

- (int16_t)pageCountValue {
	NSNumber *result = [self pageCount];
	return [result shortValue];
}

- (void)setPageCountValue:(int16_t)value_ {
	[self setPageCount:@(value_)];
}

- (int16_t)primitivePageCountValue {
	NSNumber *result = [self primitivePageCount];
	return [result shortValue];
}

- (void)setPrimitivePageCountValue:(int16_t)value_ {
	[self setPrimitivePageCount:@(value_)];
}

@dynamic price;

- (float)priceValue {
	NSNumber *result = [self price];
	return [result floatValue];
}

- (void)setPriceValue:(float)value_ {
	[self setPrice:@(value_)];
}

- (float)primitivePriceValue {
	NSNumber *result = [self primitivePrice];
	return [result floatValue];
}

- (void)setPrimitivePriceValue:(float)value_ {
	[self setPrimitivePrice:@(value_)];
}

@dynamic publishDate;

@dynamic title;

@dynamic url;

@dynamic author;

@dynamic format;

@dynamic publisher;

@end

