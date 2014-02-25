// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Book.h instead.

#import <CoreData/CoreData.h>


extern const struct BookAttributes {
	__unsafe_unretained NSString *asin;
	__unsafe_unretained NSString *fileSize;
	__unsafe_unretained NSString *fileSizeUnits;
	__unsafe_unretained NSString *pageCount;
	__unsafe_unretained NSString *price;
	__unsafe_unretained NSString *publishDate;
	__unsafe_unretained NSString *title;
} BookAttributes;

extern const struct BookRelationships {
	__unsafe_unretained NSString *author;
	__unsafe_unretained NSString *format;
	__unsafe_unretained NSString *publisher;
} BookRelationships;

extern const struct BookFetchedProperties {
} BookFetchedProperties;

@class Author;
@class Format;
@class Publisher;









@interface BookID : NSManagedObjectID {}
@end

@interface _Book : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BookID*)objectID;





@property (nonatomic, strong) NSString* asin;



//- (BOOL)validateAsin:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fileSize;



@property float fileSizeValue;
- (float)fileSizeValue;
- (void)setFileSizeValue:(float)value_;

//- (BOOL)validateFileSize:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* fileSizeUnits;



//- (BOOL)validateFileSizeUnits:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pageCount;



@property int16_t pageCountValue;
- (int16_t)pageCountValue;
- (void)setPageCountValue:(int16_t)value_;

//- (BOOL)validatePageCount:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* price;



@property float priceValue;
- (float)priceValue;
- (void)setPriceValue:(float)value_;

//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* publishDate;



//- (BOOL)validatePublishDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Author *author;

//- (BOOL)validateAuthor:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) Format *format;

//- (BOOL)validateFormat:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) Publisher *publisher;

//- (BOOL)validatePublisher:(id*)value_ error:(NSError**)error_;





@end

@interface _Book (CoreDataGeneratedAccessors)

@end

@interface _Book (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAsin;
- (void)setPrimitiveAsin:(NSString*)value;




- (NSNumber*)primitiveFileSize;
- (void)setPrimitiveFileSize:(NSNumber*)value;

- (float)primitiveFileSizeValue;
- (void)setPrimitiveFileSizeValue:(float)value_;




- (NSString*)primitiveFileSizeUnits;
- (void)setPrimitiveFileSizeUnits:(NSString*)value;




- (NSNumber*)primitivePageCount;
- (void)setPrimitivePageCount:(NSNumber*)value;

- (int16_t)primitivePageCountValue;
- (void)setPrimitivePageCountValue:(int16_t)value_;




- (NSNumber*)primitivePrice;
- (void)setPrimitivePrice:(NSNumber*)value;

- (float)primitivePriceValue;
- (void)setPrimitivePriceValue:(float)value_;




- (NSDate*)primitivePublishDate;
- (void)setPrimitivePublishDate:(NSDate*)value;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;





- (Author*)primitiveAuthor;
- (void)setPrimitiveAuthor:(Author*)value;



- (Format*)primitiveFormat;
- (void)setPrimitiveFormat:(Format*)value;



- (Publisher*)primitivePublisher;
- (void)setPrimitivePublisher:(Publisher*)value;


@end
