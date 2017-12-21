//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/grouping/TermFirstPassGroupingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector

#if !defined (OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector || defined(INCLUDE_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector))
#define OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector_

#define RESTRICT_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector 1
#define INCLUDE_OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector 1
#include "org/apache/lucene/search/grouping/AbstractFirstPassGroupingCollector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchSort;

@interface OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector : OrgApacheLuceneSearchGroupingAbstractFirstPassGroupingCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)groupField
   withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                         withInt:(jint)topNGroups;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase;

#pragma mark Protected

- (NSString *)copyDocGroupValueWithId:(NSString *)groupValue
                               withId:(NSString *)reuse OBJC_METHOD_FAMILY_NONE;

- (NSString *)getDocGroupValueWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector *self, NSString *groupField, OrgApacheLuceneSearchSort *groupSort, jint topNGroups);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector *new_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(NSString *groupField, OrgApacheLuceneSearchSort *groupSort, jint topNGroups) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector *create_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector_initWithNSString_withOrgApacheLuceneSearchSort_withInt_(NSString *groupField, OrgApacheLuceneSearchSort *groupSort, jint topNGroups);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingTermFirstPassGroupingCollector")
