//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/grouping/TermSecondPassGroupingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector

#if !defined (OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector))
#define OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector_

#define RESTRICT_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector 1
#define INCLUDE_OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector 1
#include "org/apache/lucene/search/grouping/AbstractSecondPassGroupingCollector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector : OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)groupField
          withJavaUtilCollection:(id<JavaUtilCollection>)groups
   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                         withInt:(jint)maxDocsPerGroup
                     withBoolean:(jboolean)getScores
                     withBoolean:(jboolean)getMaxScores
                     withBoolean:(jboolean)fillSortFields;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

#pragma mark Protected

- (OrgApacheLuceneSearchGroupingAbstractSecondPassGroupingCollector_SearchGroupDocs *)retrieveGroupWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector_initWithNSString_withJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector *self, NSString *groupField, id<JavaUtilCollection> groups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector *new_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector_initWithNSString_withJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(NSString *groupField, id<JavaUtilCollection> groups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector *create_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector_initWithNSString_withJavaUtilCollection_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(NSString *groupField, id<JavaUtilCollection> groups, OrgApacheLuceneSearchSort *groupSort, OrgApacheLuceneSearchSort *withinGroupSort, jint maxDocsPerGroup, jboolean getScores, jboolean getMaxScores, jboolean fillSortFields);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermSecondPassGroupingCollector")
