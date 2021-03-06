//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/LogMergePolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogMergePolicy")
#ifdef RESTRICT_OrgApacheLuceneIndexLogMergePolicy
#define INCLUDE_ALL_OrgApacheLuceneIndexLogMergePolicy 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexLogMergePolicy 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexLogMergePolicy

#if !defined (OrgApacheLuceneIndexLogMergePolicy_) && (INCLUDE_ALL_OrgApacheLuceneIndexLogMergePolicy || defined(INCLUDE_OrgApacheLuceneIndexLogMergePolicy))
#define OrgApacheLuceneIndexLogMergePolicy_

#define RESTRICT_OrgApacheLuceneIndexMergePolicy 1
#define INCLUDE_OrgApacheLuceneIndexMergePolicy 1
#include "org/apache/lucene/index/MergePolicy.h"

@class OrgApacheLuceneIndexMergePolicy_MergeSpecification;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexLogMergePolicy : OrgApacheLuceneIndexMergePolicy {
 @public
  jint mergeFactor_;
  jlong minMergeSize_;
  jlong maxMergeSize_;
  jlong maxMergeSizeForForcedMerge_;
  jint maxMergeDocs_;
  jdouble noCFSRatio_;
  jboolean calibrateSizeByDeletes_;
  jboolean useCompoundFile_;
}

#pragma mark Public

- (instancetype)init;

- (void)close;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                     withInt:(jint)maxNumSegments
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos;

- (jboolean)getCalibrateSizeByDeletes;

- (jint)getMaxMergeDocs;

- (jint)getMergeFactor;

- (jdouble)getNoCFSRatio;

- (jboolean)getUseCompoundFile;

- (void)setCalibrateSizeByDeletesWithBoolean:(jboolean)calibrateSizeByDeletes;

- (void)setMaxMergeDocsWithInt:(jint)maxMergeDocs;

- (void)setMergeFactorWithInt:(jint)mergeFactor;

- (void)setNoCFSRatioWithDouble:(jdouble)noCFSRatio;

- (void)setUseCompoundFileWithBoolean:(jboolean)useCompoundFile;

- (NSString *)description;

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                            withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)mergedInfo;

#pragma mark Protected

- (jboolean)isMergedWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jboolean)isMergedWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                 withInt:(jint)maxNumSegments
                                         withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge;

- (void)messageWithNSString:(NSString *)message;

- (jlong)sizeWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jlong)sizeBytesWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jlong)sizeDocsWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jboolean)verbose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLogMergePolicy)

inline jdouble OrgApacheLuceneIndexLogMergePolicy_get_LEVEL_LOG_SPAN();
#define OrgApacheLuceneIndexLogMergePolicy_LEVEL_LOG_SPAN 0.75
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogMergePolicy, LEVEL_LOG_SPAN, jdouble)

inline jint OrgApacheLuceneIndexLogMergePolicy_get_DEFAULT_MERGE_FACTOR();
#define OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MERGE_FACTOR 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogMergePolicy, DEFAULT_MERGE_FACTOR, jint)

inline jint OrgApacheLuceneIndexLogMergePolicy_get_DEFAULT_MAX_MERGE_DOCS();
#define OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MAX_MERGE_DOCS 2147483647
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogMergePolicy, DEFAULT_MAX_MERGE_DOCS, jint)

inline jdouble OrgApacheLuceneIndexLogMergePolicy_get_DEFAULT_NO_CFS_RATIO();
#define OrgApacheLuceneIndexLogMergePolicy_DEFAULT_NO_CFS_RATIO 0.1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexLogMergePolicy, DEFAULT_NO_CFS_RATIO, jdouble)

FOUNDATION_EXPORT void OrgApacheLuceneIndexLogMergePolicy_init(OrgApacheLuceneIndexLogMergePolicy *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLogMergePolicy)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexLogMergePolicy")
