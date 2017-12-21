//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/function/ValueSourceQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchFunctionValueSourceQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFunctionValueSourceQuery

#if !defined (OrgApacheLuceneSearchFunctionValueSourceQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery || defined(INCLUDE_OrgApacheLuceneSearchFunctionValueSourceQuery))
#define OrgApacheLuceneSearchFunctionValueSourceQuery_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFunctionValueSource;
@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchFunctionValueSourceQuery : OrgApacheLuceneSearchQuery {
 @public
  OrgApacheLuceneSearchFunctionValueSource *valSrc_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFunctionValueSource:(OrgApacheLuceneSearchFunctionValueSource *)valSrc;

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (jboolean)isEqual:(id)o;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFunctionValueSourceQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFunctionValueSourceQuery, valSrc_, OrgApacheLuceneSearchFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFunctionValueSourceQuery_initWithOrgApacheLuceneSearchFunctionValueSource_(OrgApacheLuceneSearchFunctionValueSourceQuery *self, OrgApacheLuceneSearchFunctionValueSource *valSrc);

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionValueSourceQuery *new_OrgApacheLuceneSearchFunctionValueSourceQuery_initWithOrgApacheLuceneSearchFunctionValueSource_(OrgApacheLuceneSearchFunctionValueSource *valSrc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionValueSourceQuery *create_OrgApacheLuceneSearchFunctionValueSourceQuery_initWithOrgApacheLuceneSearchFunctionValueSource_(OrgApacheLuceneSearchFunctionValueSource *valSrc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFunctionValueSourceQuery)

#endif

#if !defined (OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight_) && (INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery || defined(INCLUDE_OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight))
#define OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight_

#define RESTRICT_OrgApacheLuceneSearchWeight 1
#define INCLUDE_OrgApacheLuceneSearchWeight 1
#include "org/apache/lucene/search/Weight.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchFunctionValueSourceQuery;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchSearcher;
@class OrgApacheLuceneSearchSimilarity;

@interface OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight : OrgApacheLuceneSearchWeight {
 @public
  OrgApacheLuceneSearchSimilarity *similarity_;
  jfloat queryNorm_;
  jfloat queryWeight_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFunctionValueSourceQuery:(OrgApacheLuceneSearchFunctionValueSourceQuery *)outer$
                                    withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                         withInt:(jint)doc;

- (OrgApacheLuceneSearchQuery *)getQuery;

- (jfloat)getValue;

- (void)normalizeWithFloat:(jfloat)norm;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                               withBoolean:(jboolean)scoreDocsInOrder
                                                               withBoolean:(jboolean)topScorer;

- (jfloat)sumOfSquaredWeights;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight, similarity_, OrgApacheLuceneSearchSimilarity *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight_initWithOrgApacheLuceneSearchFunctionValueSourceQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight *self, OrgApacheLuceneSearchFunctionValueSourceQuery *outer$, OrgApacheLuceneSearchSearcher *searcher);

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight *new_OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight_initWithOrgApacheLuceneSearchFunctionValueSourceQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchFunctionValueSourceQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight *create_OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight_initWithOrgApacheLuceneSearchFunctionValueSourceQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchFunctionValueSourceQuery *outer$, OrgApacheLuceneSearchSearcher *searcher);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFunctionValueSourceQuery_ValueSourceWeight)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionValueSourceQuery")
