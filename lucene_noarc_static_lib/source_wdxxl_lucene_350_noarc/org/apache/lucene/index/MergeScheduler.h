//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/MergeScheduler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeScheduler")
#ifdef RESTRICT_OrgApacheLuceneIndexMergeScheduler
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeScheduler 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMergeScheduler 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMergeScheduler

#if !defined (OrgApacheLuceneIndexMergeScheduler_) && (INCLUDE_ALL_OrgApacheLuceneIndexMergeScheduler || defined(INCLUDE_OrgApacheLuceneIndexMergeScheduler))
#define OrgApacheLuceneIndexMergeScheduler_

@class OrgApacheLuceneIndexIndexWriter;

@interface OrgApacheLuceneIndexMergeScheduler : NSObject

#pragma mark Public

- (instancetype)init;

- (void)close;

- (void)mergeWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMergeScheduler)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMergeScheduler_init(OrgApacheLuceneIndexMergeScheduler *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeScheduler)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMergeScheduler")
