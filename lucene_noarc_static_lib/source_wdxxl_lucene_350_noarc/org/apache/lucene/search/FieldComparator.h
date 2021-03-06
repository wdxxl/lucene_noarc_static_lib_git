//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/FieldComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldComparator
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldComparator
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_StringValComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_StringOrdValComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_StringComparatorLocale
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_ShortComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_RelevanceComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_LongComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_IntComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_FloatComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_DoubleComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_DocComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_ByteComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator 1
#endif
#ifdef INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator
#define INCLUDE_OrgApacheLuceneSearchFieldComparator 1
#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator))
#define OrgApacheLuceneSearchFieldComparator_

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchFieldComparator : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareValuesWithId:(id)first
                     withId:(id)second;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)slot;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (id)valueWithInt:(jint)slot;

#pragma mark Protected

+ (jint)binarySearchWithNSStringArray:(IOSObjectArray *)a
                         withNSString:(NSString *)key;

+ (jint)binarySearchWithNSStringArray:(IOSObjectArray *)a
                         withNSString:(NSString *)key
                              withInt:(jint)low
                              withInt:(jint)high;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_init(OrgApacheLuceneSearchFieldComparator *self);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchFieldComparator_binarySearchWithNSStringArray_withNSString_(IOSObjectArray *a, NSString *key);

FOUNDATION_EXPORT jint OrgApacheLuceneSearchFieldComparator_binarySearchWithNSStringArray_withNSString_withInt_withInt_(IOSObjectArray *a, NSString *key, jint low, jint high);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_NumericComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_NumericComparator))
#define OrgApacheLuceneSearchFieldComparator_NumericComparator_

@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchFieldComparator_NumericComparator : OrgApacheLuceneSearchFieldComparator {
 @public
  NSNumber *missingValue_;
  NSString *field_;
  id<OrgApacheLuceneUtilBits> docsWithField_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                    withNSNumber:(NSNumber *)missingValue;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (NSNumber *)valueWithInt:(jint)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_NumericComparator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, missingValue_, NSNumber *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, docsWithField_, id<OrgApacheLuceneUtilBits>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(OrgApacheLuceneSearchFieldComparator_NumericComparator *self, NSString *field, NSNumber *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_NumericComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_ByteComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_ByteComparator))
#define OrgApacheLuceneSearchFieldComparator_ByteComparator_

@class JavaLangByte;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_ByteComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangByte *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
           withJavaLangByte:(JavaLangByte *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_ByteComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_ByteComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangByte_(OrgApacheLuceneSearchFieldComparator_ByteComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangByte *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_ByteComparator *new_OrgApacheLuceneSearchFieldComparator_ByteComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangByte_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangByte *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_ByteComparator *create_OrgApacheLuceneSearchFieldComparator_ByteComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangByte_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangByte *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_ByteComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_DocComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_DocComparator))
#define OrgApacheLuceneSearchFieldComparator_DocComparator_

@class JavaLangInteger;
@class OrgApacheLuceneIndexIndexReader;

@interface OrgApacheLuceneSearchFieldComparator_DocComparator : OrgApacheLuceneSearchFieldComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangInteger *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_DocComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(OrgApacheLuceneSearchFieldComparator_DocComparator *self, jint numHits);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DocComparator *new_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DocComparator *create_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_DocComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_DoubleComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_DoubleComparator))
#define OrgApacheLuceneSearchFieldComparator_DoubleComparator_

@class JavaLangDouble;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_DoubleComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangDouble *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
         withJavaLangDouble:(JavaLangDouble *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_DoubleComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangDouble_(OrgApacheLuceneSearchFieldComparator_DoubleComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangDouble *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DoubleComparator *new_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangDouble_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangDouble *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DoubleComparator *create_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangDouble_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangDouble *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_DoubleComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_FloatComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_FloatComparator))
#define OrgApacheLuceneSearchFieldComparator_FloatComparator_

@class JavaLangFloat;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_FloatComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangFloat *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
          withJavaLangFloat:(JavaLangFloat *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_FloatComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangFloat_(OrgApacheLuceneSearchFieldComparator_FloatComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangFloat *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_FloatComparator *new_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangFloat_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangFloat *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_FloatComparator *create_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangFloat_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangFloat *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_FloatComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_IntComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_IntComparator))
#define OrgApacheLuceneSearchFieldComparator_IntComparator_

@class JavaLangInteger;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_IntComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangInteger *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
        withJavaLangInteger:(JavaLangInteger *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_IntComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangInteger_(OrgApacheLuceneSearchFieldComparator_IntComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangInteger *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_IntComparator *new_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangInteger_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangInteger *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_IntComparator *create_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangInteger_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangInteger *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_IntComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_LongComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_LongComparator))
#define OrgApacheLuceneSearchFieldComparator_LongComparator_

@class JavaLangLong;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_LongComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangLong *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
           withJavaLangLong:(JavaLangLong *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_LongComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangLong_(OrgApacheLuceneSearchFieldComparator_LongComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangLong *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_LongComparator *new_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangLong_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangLong *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_LongComparator *create_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangLong_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangLong *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_LongComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_RelevanceComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_RelevanceComparator))
#define OrgApacheLuceneSearchFieldComparator_RelevanceComparator_

@class JavaLangFloat;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchFieldComparator_RelevanceComparator : OrgApacheLuceneSearchFieldComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareValuesWithId:(JavaLangFloat *)first
                     withId:(JavaLangFloat *)second;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (JavaLangFloat *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_RelevanceComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(OrgApacheLuceneSearchFieldComparator_RelevanceComparator *self, jint numHits);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_RelevanceComparator *new_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_RelevanceComparator *create_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_RelevanceComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_ShortComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_ShortComparator))
#define OrgApacheLuceneSearchFieldComparator_ShortComparator_

@class JavaLangShort;
@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchFieldCache_Parser;

@interface OrgApacheLuceneSearchFieldComparator_ShortComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (JavaLangShort *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_Parser:(id<OrgApacheLuceneSearchFieldCache_Parser>)parser
          withJavaLangShort:(JavaLangShort *)missingValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_ShortComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_ShortComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangShort_(OrgApacheLuceneSearchFieldComparator_ShortComparator *self, jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangShort *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_ShortComparator *new_OrgApacheLuceneSearchFieldComparator_ShortComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangShort_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangShort *missingValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_ShortComparator *create_OrgApacheLuceneSearchFieldComparator_ShortComparator_initWithInt_withNSString_withOrgApacheLuceneSearchFieldCache_Parser_withJavaLangShort_(jint numHits, NSString *field, id<OrgApacheLuceneSearchFieldCache_Parser> parser, JavaLangShort *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_ShortComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_StringComparatorLocale_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_StringComparatorLocale))
#define OrgApacheLuceneSearchFieldComparator_StringComparatorLocale_

@class JavaTextCollator;
@class JavaUtilLocale;
@class OrgApacheLuceneIndexIndexReader;

@interface OrgApacheLuceneSearchFieldComparator_StringComparatorLocale : OrgApacheLuceneSearchFieldComparator {
 @public
  JavaTextCollator *collator_;
}

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareValuesWithId:(NSString *)val1
                     withId:(NSString *)val2;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (NSString *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
         withJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_StringComparatorLocale)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_StringComparatorLocale, collator_, JavaTextCollator *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_StringComparatorLocale_initWithInt_withNSString_withJavaUtilLocale_(OrgApacheLuceneSearchFieldComparator_StringComparatorLocale *self, jint numHits, NSString *field, JavaUtilLocale *locale);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringComparatorLocale *new_OrgApacheLuceneSearchFieldComparator_StringComparatorLocale_initWithInt_withNSString_withJavaUtilLocale_(jint numHits, NSString *field, JavaUtilLocale *locale) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringComparatorLocale *create_OrgApacheLuceneSearchFieldComparator_StringComparatorLocale_initWithInt_withNSString_withJavaUtilLocale_(jint numHits, NSString *field, JavaUtilLocale *locale);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_StringComparatorLocale)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_StringOrdValComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_StringOrdValComparator))
#define OrgApacheLuceneSearchFieldComparator_StringOrdValComparator_

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;

@interface OrgApacheLuceneSearchFieldComparator_StringOrdValComparator : OrgApacheLuceneSearchFieldComparator

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
                    withInt:(jint)sortPos
                withBoolean:(jboolean)reversed;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareValuesWithId:(NSString *)val1
                     withId:(NSString *)val2;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (jint)getBottomSlot;

- (NSString *)getField;

- (IOSObjectArray *)getValues;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (NSString *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_StringOrdValComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_StringOrdValComparator_initWithInt_withNSString_withInt_withBoolean_(OrgApacheLuceneSearchFieldComparator_StringOrdValComparator *self, jint numHits, NSString *field, jint sortPos, jboolean reversed);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringOrdValComparator *new_OrgApacheLuceneSearchFieldComparator_StringOrdValComparator_initWithInt_withNSString_withInt_withBoolean_(jint numHits, NSString *field, jint sortPos, jboolean reversed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringOrdValComparator *create_OrgApacheLuceneSearchFieldComparator_StringOrdValComparator_initWithInt_withNSString_withInt_withBoolean_(jint numHits, NSString *field, jint sortPos, jboolean reversed);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_StringOrdValComparator)

#endif

#if !defined (OrgApacheLuceneSearchFieldComparator_StringValComparator_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator || defined(INCLUDE_OrgApacheLuceneSearchFieldComparator_StringValComparator))
#define OrgApacheLuceneSearchFieldComparator_StringValComparator_

@class OrgApacheLuceneIndexIndexReader;

@interface OrgApacheLuceneSearchFieldComparator_StringValComparator : OrgApacheLuceneSearchFieldComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareValuesWithId:(NSString *)val1
                     withId:(NSString *)val2;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (NSString *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_StringValComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_StringValComparator_initWithInt_withNSString_(OrgApacheLuceneSearchFieldComparator_StringValComparator *self, jint numHits, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringValComparator *new_OrgApacheLuceneSearchFieldComparator_StringValComparator_initWithInt_withNSString_(jint numHits, NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_StringValComparator *create_OrgApacheLuceneSearchFieldComparator_StringValComparator_initWithInt_withNSString_(jint numHits, NSString *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_StringValComparator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldComparator")
