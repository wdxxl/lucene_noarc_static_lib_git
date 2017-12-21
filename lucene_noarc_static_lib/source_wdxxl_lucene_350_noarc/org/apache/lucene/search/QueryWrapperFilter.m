//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/QueryWrapperFilter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/QueryWrapperFilter.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchQueryWrapperFilter () {
 @public
  OrgApacheLuceneSearchQuery *query_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchQueryWrapperFilter, query_, OrgApacheLuceneSearchQuery *)

@interface OrgApacheLuceneSearchQueryWrapperFilter_1 : OrgApacheLuceneSearchDocIdSet {
 @public
  OrgApacheLuceneSearchWeight *val$weight_;
  OrgApacheLuceneIndexIndexReader *val$reader_;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)capture$1;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

- (jboolean)isCacheable;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryWrapperFilter_1)

__attribute__((unused)) static void OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchQueryWrapperFilter_1 *self, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchQueryWrapperFilter_1 *new_OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchQueryWrapperFilter_1 *create_OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1);

@implementation OrgApacheLuceneSearchQueryWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(self, query);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchWeight *weight = [create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(reader) createNormalizedWeightWithOrgApacheLuceneSearchQuery:query_];
  return create_OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(weight, reader);
}

- (NSString *)description {
  return JreStrcat("$@C", @"QueryWrapperFilter(", query_, ')');
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchQueryWrapperFilter class]])) return false;
  return [((OrgApacheLuceneSearchQuery *) nil_chk(self->query_)) isEqual:((OrgApacheLuceneSearchQueryWrapperFilter *) nil_chk(((OrgApacheLuceneSearchQueryWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchQueryWrapperFilter class]))))->query_];
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneSearchQuery *) nil_chk(query_)) hash]) ^ (jint) 0x923F64B9;
}

- (void)dealloc {
  RELEASE_(query_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchQuery:);
  methods[1].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexIndexReader:);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "query_", "LOrgApacheLuceneSearchQuery;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchQuery;", "getDocIdSet", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "toString", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryWrapperFilter = { "QueryWrapperFilter", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchQueryWrapperFilter;
}

@end

void OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQueryWrapperFilter *self, OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->query_, query);
}

OrgApacheLuceneSearchQueryWrapperFilter *new_OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchQueryWrapperFilter, initWithOrgApacheLuceneSearchQuery_, query)
}

OrgApacheLuceneSearchQueryWrapperFilter *create_OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchQueryWrapperFilter, initWithOrgApacheLuceneSearchQuery_, query)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryWrapperFilter)

@implementation OrgApacheLuceneSearchQueryWrapperFilter_1

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)capture$1 {
  OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(self, capture$0, capture$1);
  return self;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return [((OrgApacheLuceneSearchWeight *) nil_chk(val$weight_)) scorerWithOrgApacheLuceneIndexIndexReader:val$reader_ withBoolean:true withBoolean:false];
}

- (jboolean)isCacheable {
  return false;
}

- (void)dealloc {
  RELEASE_(val$weight_);
  RELEASE_(val$reader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSetIterator;", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(iterator);
  methods[2].selector = @selector(isCacheable);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$weight_", "LOrgApacheLuceneSearchWeight;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoIOException;", "LOrgApacheLuceneSearchQueryWrapperFilter;", "getDocIdSetWithOrgApacheLuceneIndexIndexReader:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryWrapperFilter_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 3, 2, 1, -1, 2, -1, -1 };
  return &_OrgApacheLuceneSearchQueryWrapperFilter_1;
}

@end

void OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchQueryWrapperFilter_1 *self, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1) {
  JreStrongAssign(&self->val$weight_, capture$0);
  JreStrongAssign(&self->val$reader_, capture$1);
  OrgApacheLuceneSearchDocIdSet_init(self);
}

OrgApacheLuceneSearchQueryWrapperFilter_1 *new_OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchQueryWrapperFilter_1, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_, capture$0, capture$1)
}

OrgApacheLuceneSearchQueryWrapperFilter_1 *create_OrgApacheLuceneSearchQueryWrapperFilter_1_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneIndexIndexReader *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchQueryWrapperFilter_1, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexIndexReader_, capture$0, capture$1)
}
