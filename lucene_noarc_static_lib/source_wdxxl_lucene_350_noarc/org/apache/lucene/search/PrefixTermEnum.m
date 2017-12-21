//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/PrefixTermEnum.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/PrefixTermEnum.h"

@interface OrgApacheLuceneSearchPrefixTermEnum () {
 @public
  OrgApacheLuceneIndexTerm *prefix_;
  jboolean endEnum_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPrefixTermEnum, prefix_, OrgApacheLuceneIndexTerm *)

@implementation OrgApacheLuceneSearchPrefixTermEnum

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)prefix {
  OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(self, reader, prefix);
  return self;
}

- (jfloat)difference {
  return 1.0f;
}

- (jboolean)endEnum {
  return endEnum_;
}

- (OrgApacheLuceneIndexTerm *)getPrefixTerm {
  return prefix_;
}

- (jboolean)termCompareWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  if ([((OrgApacheLuceneIndexTerm *) nil_chk(term)) field] == [((OrgApacheLuceneIndexTerm *) nil_chk(prefix_)) field] && [((NSString *) nil_chk([term text])) java_hasPrefix:[prefix_ text]]) {
    return true;
  }
  endEnum_ = true;
  return false;
}

- (void)dealloc {
  RELEASE_(prefix_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(difference);
  methods[2].selector = @selector(endEnum);
  methods[3].selector = @selector(getPrefixTerm);
  methods[4].selector = @selector(termCompareWithOrgApacheLuceneIndexTerm:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "prefix_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "endEnum_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneIndexTerm;", "LJavaIoIOException;", "termCompare", "LOrgApacheLuceneIndexTerm;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPrefixTermEnum = { "PrefixTermEnum", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPrefixTermEnum;
}

@end

void OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchPrefixTermEnum *self, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix) {
  OrgApacheLuceneSearchFilteredTermEnum_init(self);
  self->endEnum_ = false;
  JreStrongAssign(&self->prefix_, prefix);
  [self setEnumWithOrgApacheLuceneIndexTermEnum:[((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) termsWithOrgApacheLuceneIndexTerm:create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_([((OrgApacheLuceneIndexTerm *) nil_chk(prefix)) field], [prefix text])]];
}

OrgApacheLuceneSearchPrefixTermEnum *new_OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPrefixTermEnum, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_, reader, prefix)
}

OrgApacheLuceneSearchPrefixTermEnum *create_OrgApacheLuceneSearchPrefixTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexTerm *prefix) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPrefixTermEnum, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexTerm_, reader, prefix)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPrefixTermEnum)
