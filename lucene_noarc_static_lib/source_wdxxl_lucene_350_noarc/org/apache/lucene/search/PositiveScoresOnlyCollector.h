//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/PositiveScoresOnlyCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPositiveScoresOnlyCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchPositiveScoresOnlyCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchPositiveScoresOnlyCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPositiveScoresOnlyCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPositiveScoresOnlyCollector

#if !defined (OrgApacheLuceneSearchPositiveScoresOnlyCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchPositiveScoresOnlyCollector || defined(INCLUDE_OrgApacheLuceneSearchPositiveScoresOnlyCollector))
#define OrgApacheLuceneSearchPositiveScoresOnlyCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchPositiveScoresOnlyCollector : OrgApacheLuceneSearchCollector

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)c;

- (jboolean)acceptsDocsOutOfOrder;

- (void)collectWithInt:(jint)doc;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPositiveScoresOnlyCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchPositiveScoresOnlyCollector *self, OrgApacheLuceneSearchCollector *c);

FOUNDATION_EXPORT OrgApacheLuceneSearchPositiveScoresOnlyCollector *new_OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchCollector *c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPositiveScoresOnlyCollector *create_OrgApacheLuceneSearchPositiveScoresOnlyCollector_initWithOrgApacheLuceneSearchCollector_(OrgApacheLuceneSearchCollector *c);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPositiveScoresOnlyCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPositiveScoresOnlyCollector")