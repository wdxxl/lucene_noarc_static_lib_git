//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermsHashConsumerPerField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermsHashConsumerPerField")
#ifdef RESTRICT_OrgApacheLuceneIndexTermsHashConsumerPerField
#define INCLUDE_ALL_OrgApacheLuceneIndexTermsHashConsumerPerField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermsHashConsumerPerField 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermsHashConsumerPerField

#if !defined (OrgApacheLuceneIndexTermsHashConsumerPerField_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermsHashConsumerPerField || defined(INCLUDE_OrgApacheLuceneIndexTermsHashConsumerPerField))
#define OrgApacheLuceneIndexTermsHashConsumerPerField_

@class IOSObjectArray;
@class OrgApacheLuceneIndexParallelPostingsArray;
@protocol OrgApacheLuceneDocumentFieldable;

@interface OrgApacheLuceneIndexTermsHashConsumerPerField : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (void)addTermWithInt:(jint)termID;

- (OrgApacheLuceneIndexParallelPostingsArray *)createPostingsArrayWithInt:(jint)size;

- (void)finish;

- (jint)getStreamCount;

- (void)newTermWithInt:(jint)termID OBJC_METHOD_FAMILY_NONE;

- (void)skippingLongTerm;

- (void)startWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field;

- (jboolean)startWithOrgApacheLuceneDocumentFieldableArray:(IOSObjectArray *)fields
                                                   withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermsHashConsumerPerField)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermsHashConsumerPerField_init(OrgApacheLuceneIndexTermsHashConsumerPerField *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsHashConsumerPerField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermsHashConsumerPerField")
