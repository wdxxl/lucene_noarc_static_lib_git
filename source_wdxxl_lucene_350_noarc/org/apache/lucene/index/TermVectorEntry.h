//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermVectorEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorEntry")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorEntry
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorEntry 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorEntry 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorEntry

#if !defined (OrgApacheLuceneIndexTermVectorEntry_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorEntry || defined(INCLUDE_OrgApacheLuceneIndexTermVectorEntry))
#define OrgApacheLuceneIndexTermVectorEntry_

@class IOSIntArray;
@class IOSObjectArray;

@interface OrgApacheLuceneIndexTermVectorEntry : NSObject {
 @public
  IOSIntArray *positions_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)term
                         withInt:(jint)frequency
withOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets
                    withIntArray:(IOSIntArray *)positions;

- (jboolean)isEqual:(id)o;

- (NSString *)getField;

- (jint)getFrequency;

- (IOSObjectArray *)getOffsets;

- (IOSIntArray *)getPositions;

- (NSString *)getTerm;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (void)setFrequencyWithInt:(jint)frequency;

- (void)setOffsetsWithOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets;

- (void)setPositionsWithIntArray:(IOSIntArray *)positions;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorEntry)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorEntry, positions_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorEntry_init(OrgApacheLuceneIndexTermVectorEntry *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorEntry *new_OrgApacheLuceneIndexTermVectorEntry_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorEntry *create_OrgApacheLuceneIndexTermVectorEntry_init();

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorEntry_initWithNSString_withNSString_withInt_withOrgApacheLuceneIndexTermVectorOffsetInfoArray_withIntArray_(OrgApacheLuceneIndexTermVectorEntry *self, NSString *field, NSString *term, jint frequency, IOSObjectArray *offsets, IOSIntArray *positions);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorEntry *new_OrgApacheLuceneIndexTermVectorEntry_initWithNSString_withNSString_withInt_withOrgApacheLuceneIndexTermVectorOffsetInfoArray_withIntArray_(NSString *field, NSString *term, jint frequency, IOSObjectArray *offsets, IOSIntArray *positions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorEntry *create_OrgApacheLuceneIndexTermVectorEntry_initWithNSString_withNSString_withInt_withOrgApacheLuceneIndexTermVectorOffsetInfoArray_withIntArray_(NSString *field, NSString *term, jint frequency, IOSObjectArray *offsets, IOSIntArray *positions);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorEntry)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorEntry")
