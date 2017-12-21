//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/grouping/GroupDocs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingGroupDocs")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingGroupDocs
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingGroupDocs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingGroupDocs 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingGroupDocs

#if !defined (OrgApacheLuceneSearchGroupingGroupDocs_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingGroupDocs || defined(INCLUDE_OrgApacheLuceneSearchGroupingGroupDocs))
#define OrgApacheLuceneSearchGroupingGroupDocs_

@class IOSObjectArray;

@interface OrgApacheLuceneSearchGroupingGroupDocs : NSObject {
 @public
  id groupValue_;
  jfloat maxScore_;
  IOSObjectArray *scoreDocs_;
  jint totalHits_;
  IOSObjectArray *groupSortValues_;
}

#pragma mark Public

- (instancetype)initWithFloat:(jfloat)maxScore
                      withInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
                       withId:(id)groupValue
            withNSObjectArray:(IOSObjectArray *)groupSortValues;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingGroupDocs)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, groupValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, scoreDocs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingGroupDocs, groupSortValues_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(OrgApacheLuceneSearchGroupingGroupDocs *self, jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupDocs *new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingGroupDocs *create_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_(jfloat maxScore, jint totalHits, IOSObjectArray *scoreDocs, id groupValue, IOSObjectArray *groupSortValues);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingGroupDocs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingGroupDocs")
