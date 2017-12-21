//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/DocIdBitSet.java
//

#include "J2ObjC_source.h"
#include "java/util/BitSet.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/DocIdBitSet.h"

@interface OrgApacheLuceneUtilDocIdBitSet () {
 @public
  JavaUtilBitSet *bitSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilDocIdBitSet, bitSet_, JavaUtilBitSet *)

@interface OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator : OrgApacheLuceneSearchDocIdSetIterator {
 @public
  jint docId_;
  JavaUtilBitSet *bitSet_;
}

- (instancetype)initWithJavaUtilBitSet:(JavaUtilBitSet *)bitSet;

- (jint)docID;

- (jint)nextDoc;

- (jint)advanceWithInt:(jint)target;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator, bitSet_, JavaUtilBitSet *)

__attribute__((unused)) static void OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *self, JavaUtilBitSet *bitSet);

__attribute__((unused)) static OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *new_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *create_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator)

@implementation OrgApacheLuceneUtilDocIdBitSet

- (instancetype)initWithJavaUtilBitSet:(JavaUtilBitSet *)bitSet {
  OrgApacheLuceneUtilDocIdBitSet_initWithJavaUtilBitSet_(self, bitSet);
  return self;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return create_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(bitSet_);
}

- (jboolean)isCacheable {
  return true;
}

- (JavaUtilBitSet *)getBitSet {
  return self->bitSet_;
}

- (void)dealloc {
  RELEASE_(bitSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSetIterator;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilBitSet;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilBitSet:);
  methods[1].selector = @selector(iterator);
  methods[2].selector = @selector(isCacheable);
  methods[3].selector = @selector(getBitSet);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bitSet_", "LJavaUtilBitSet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilBitSet;", "LOrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilDocIdBitSet = { "DocIdBitSet", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, 1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilDocIdBitSet;
}

@end

void OrgApacheLuceneUtilDocIdBitSet_initWithJavaUtilBitSet_(OrgApacheLuceneUtilDocIdBitSet *self, JavaUtilBitSet *bitSet) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  JreStrongAssign(&self->bitSet_, bitSet);
}

OrgApacheLuceneUtilDocIdBitSet *new_OrgApacheLuceneUtilDocIdBitSet_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilDocIdBitSet, initWithJavaUtilBitSet_, bitSet)
}

OrgApacheLuceneUtilDocIdBitSet *create_OrgApacheLuceneUtilDocIdBitSet_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilDocIdBitSet, initWithJavaUtilBitSet_, bitSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilDocIdBitSet)

@implementation OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator

- (instancetype)initWithJavaUtilBitSet:(JavaUtilBitSet *)bitSet {
  OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(self, bitSet);
  return self;
}

- (jint)docID {
  return docId_;
}

- (jint)nextDoc {
  jint d = [((JavaUtilBitSet *) nil_chk(bitSet_)) nextSetBitWithInt:docId_ + 1];
  docId_ = d == -1 ? OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS : d;
  return docId_;
}

- (jint)advanceWithInt:(jint)target {
  jint d = [((JavaUtilBitSet *) nil_chk(bitSet_)) nextSetBitWithInt:target];
  docId_ = d == -1 ? OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS : d;
  return docId_;
}

- (void)dealloc {
  RELEASE_(bitSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilBitSet:);
  methods[1].selector = @selector(docID);
  methods[2].selector = @selector(nextDoc);
  methods[3].selector = @selector(advanceWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bitSet_", "LJavaUtilBitSet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilBitSet;", "advance", "I", "LOrgApacheLuceneUtilDocIdBitSet;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator = { "DocIdBitSetIterator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0xa, 4, 2, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator;
}

@end

void OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *self, JavaUtilBitSet *bitSet) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  JreStrongAssign(&self->bitSet_, bitSet);
  self->docId_ = -1;
}

OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *new_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator, initWithJavaUtilBitSet_, bitSet)
}

OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator *create_OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator_initWithJavaUtilBitSet_(JavaUtilBitSet *bitSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator, initWithJavaUtilBitSet_, bitSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilDocIdBitSet_DocIdBitSetIterator)
