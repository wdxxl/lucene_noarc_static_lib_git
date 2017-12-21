//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/SortField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortField")
#ifdef RESTRICT_OrgApacheLuceneSearchSortField
#define INCLUDE_ALL_OrgApacheLuceneSearchSortField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSortField 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSortField

#if !defined (OrgApacheLuceneSearchSortField_) && (INCLUDE_ALL_OrgApacheLuceneSearchSortField || defined(INCLUDE_OrgApacheLuceneSearchSortField))
#define OrgApacheLuceneSearchSortField_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class OrgApacheLuceneSearchFieldComparator;
@class OrgApacheLuceneSearchFieldComparatorSource;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchSortField : NSObject < JavaIoSerializable > {
 @public
  jboolean reverse_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator
                     withBoolean:(jboolean)reverse;

- (instancetype)initWithNSString:(NSString *)field
                         withInt:(jint)type;

- (instancetype)initWithNSString:(NSString *)field
                         withInt:(jint)type
                     withBoolean:(jboolean)reverse;

- (instancetype)initWithNSString:(NSString *)field
              withJavaUtilLocale:(JavaUtilLocale *)locale;

- (instancetype)initWithNSString:(NSString *)field
              withJavaUtilLocale:(JavaUtilLocale *)locale
                     withBoolean:(jboolean)reverse;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
                     withBoolean:(jboolean)reverse;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos;

- (OrgApacheLuceneSearchFieldComparatorSource *)getComparatorSource;

- (NSString *)getField;

- (JavaUtilLocale *)getLocale;

- (id<OrgApacheLuceneSearchFieldCache_Parser>)getParser;

- (jboolean)getReverse;

- (jint)getType;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchSortField *)setMissingValueWithId:(id)missingValue;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSortField)

inline jint OrgApacheLuceneSearchSortField_get_SCORE();
#define OrgApacheLuceneSearchSortField_SCORE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, SCORE, jint)

inline jint OrgApacheLuceneSearchSortField_get_DOC();
#define OrgApacheLuceneSearchSortField_DOC 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, DOC, jint)

inline jint OrgApacheLuceneSearchSortField_get_STRING();
#define OrgApacheLuceneSearchSortField_STRING 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, STRING, jint)

inline jint OrgApacheLuceneSearchSortField_get_INT();
#define OrgApacheLuceneSearchSortField_INT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, INT, jint)

inline jint OrgApacheLuceneSearchSortField_get_FLOAT();
#define OrgApacheLuceneSearchSortField_FLOAT 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, FLOAT, jint)

inline jint OrgApacheLuceneSearchSortField_get_LONG();
#define OrgApacheLuceneSearchSortField_LONG 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, LONG, jint)

inline jint OrgApacheLuceneSearchSortField_get_DOUBLE();
#define OrgApacheLuceneSearchSortField_DOUBLE 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, DOUBLE, jint)

inline jint OrgApacheLuceneSearchSortField_get_SHORT();
#define OrgApacheLuceneSearchSortField_SHORT 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, SHORT, jint)

inline jint OrgApacheLuceneSearchSortField_get_CUSTOM();
#define OrgApacheLuceneSearchSortField_CUSTOM 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, CUSTOM, jint)

inline jint OrgApacheLuceneSearchSortField_get_BYTE();
#define OrgApacheLuceneSearchSortField_BYTE 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, BYTE, jint)

inline jint OrgApacheLuceneSearchSortField_get_STRING_VAL();
#define OrgApacheLuceneSearchSortField_STRING_VAL 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSortField, STRING_VAL, jint)

inline OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_get_FIELD_SCORE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_SCORE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSortField, FIELD_SCORE, OrgApacheLuceneSearchSortField *)

inline OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_get_FIELD_DOC();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_DOC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSortField, FIELD_DOC, OrgApacheLuceneSearchSortField *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withInt_(OrgApacheLuceneSearchSortField *self, NSString *field, jint type);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withInt_(NSString *field, jint type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withInt_(NSString *field, jint type);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withInt_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, jint type, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withInt_withBoolean_(NSString *field, jint type, jboolean reverse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withInt_withBoolean_(NSString *field, jint type, jboolean reverse);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_(OrgApacheLuceneSearchSortField *self, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_(NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_(NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_withBoolean_(NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, jboolean reverse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldCache_Parser_withBoolean_(NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, jboolean reverse);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_(OrgApacheLuceneSearchSortField *self, NSString *field, JavaUtilLocale *locale);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_(NSString *field, JavaUtilLocale *locale) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_(NSString *field, JavaUtilLocale *locale);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, JavaUtilLocale *locale, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_withBoolean_(NSString *field, JavaUtilLocale *locale, jboolean reverse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withJavaUtilLocale_withBoolean_(NSString *field, JavaUtilLocale *locale, jboolean reverse);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *create_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSortField")
