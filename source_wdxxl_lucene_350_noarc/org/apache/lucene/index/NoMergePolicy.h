//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/NoMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexNoMergePolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNoMergePolicy

#if !defined (OrgApacheLuceneIndexNoMergePolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy || defined(INCLUDE_OrgApacheLuceneIndexNoMergePolicy))
#define OrgApacheLuceneIndexNoMergePolicy_

#define RESTRICT_OrgApacheLuceneIndexMergePolicy 1
#define INCLUDE_OrgApacheLuceneIndexMergePolicy 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexMergePolicy_MergeSpecification;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexNoMergePolicy : OrgApacheLuceneIndexMergePolicy

#pragma mark Public

- (void)close;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos
                                                                                                     withInt:(jint)maxSegmentCount
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos;

- (void)setIndexWriterWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

- (NSString *)description;

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segments
                            withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)newSegment;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexNoMergePolicy)

inline OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_get_NO_COMPOUND_FILES();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_NO_COMPOUND_FILES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexNoMergePolicy, NO_COMPOUND_FILES, OrgApacheLuceneIndexMergePolicy *)

inline OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_get_COMPOUND_FILES();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexMergePolicy *OrgApacheLuceneIndexNoMergePolicy_COMPOUND_FILES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexNoMergePolicy, COMPOUND_FILES, OrgApacheLuceneIndexMergePolicy *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNoMergePolicy)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNoMergePolicy")
