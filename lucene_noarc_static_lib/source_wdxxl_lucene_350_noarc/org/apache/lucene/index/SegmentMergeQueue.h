//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/SegmentMergeQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeQueue")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentMergeQueue
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeQueue 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeQueue 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentMergeQueue

#if !defined (OrgApacheLuceneIndexSegmentMergeQueue_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeQueue || defined(INCLUDE_OrgApacheLuceneIndexSegmentMergeQueue))
#define OrgApacheLuceneIndexSegmentMergeQueue_

#define RESTRICT_OrgApacheLuceneUtilPriorityQueue 1
#define INCLUDE_OrgApacheLuceneUtilPriorityQueue 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneIndexSegmentMergeInfo;

@interface OrgApacheLuceneIndexSegmentMergeQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (OrgApacheLuceneIndexSegmentMergeInfo *)addWithId:(OrgApacheLuceneIndexSegmentMergeInfo *)arg0;

- (OrgApacheLuceneIndexSegmentMergeInfo *)insertWithOverflowWithId:(OrgApacheLuceneIndexSegmentMergeInfo *)arg0;

- (OrgApacheLuceneIndexSegmentMergeInfo *)pop;

- (OrgApacheLuceneIndexSegmentMergeInfo *)top;

- (OrgApacheLuceneIndexSegmentMergeInfo *)updateTop;

#pragma mark Protected

- (OrgApacheLuceneIndexSegmentMergeInfo *)getSentinelObject;

- (jboolean)lessThanWithId:(OrgApacheLuceneIndexSegmentMergeInfo *)stiA
                    withId:(OrgApacheLuceneIndexSegmentMergeInfo *)stiB;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentMergeQueue)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentMergeQueue_initWithInt_(OrgApacheLuceneIndexSegmentMergeQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentMergeQueue *new_OrgApacheLuceneIndexSegmentMergeQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentMergeQueue *create_OrgApacheLuceneIndexSegmentMergeQueue_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentMergeQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentMergeQueue")
