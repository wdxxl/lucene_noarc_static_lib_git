//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/HitQueue.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/search/HitQueue.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/util/PriorityQueue.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchHitQueue () {
 @public
  jboolean prePopulate_;
}

@end

@implementation OrgApacheLuceneSearchHitQueue

- (instancetype)initWithInt:(jint)size
                withBoolean:(jboolean)prePopulate {
  OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(self, size, prePopulate);
  return self;
}

- (OrgApacheLuceneSearchScoreDoc *)getSentinelObject {
  return !prePopulate_ ? nil : create_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(JavaLangInteger_MAX_VALUE, JavaLangFloat_NEGATIVE_INFINITY);
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchScoreDoc *)hitA
                    withId:(OrgApacheLuceneSearchScoreDoc *)hitB {
  if (((OrgApacheLuceneSearchScoreDoc *) nil_chk(hitA))->score_ == ((OrgApacheLuceneSearchScoreDoc *) nil_chk(hitB))->score_) return hitA->doc_ > hitB->doc_;
  else return hitA->score_ < hitB->score_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScoreDoc;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x14, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withBoolean:);
  methods[1].selector = @selector(getSentinelObject);
  methods[2].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "prePopulate_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IZ", "lessThan", "LOrgApacheLuceneSearchScoreDoc;LOrgApacheLuceneSearchScoreDoc;", "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/ScoreDoc;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHitQueue = { "HitQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 3, 1, -1, -1, -1, 3, -1 };
  return &_OrgApacheLuceneSearchHitQueue;
}

@end

void OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(OrgApacheLuceneSearchHitQueue *self, jint size, jboolean prePopulate) {
  OrgApacheLuceneUtilPriorityQueue_init(self);
  self->prePopulate_ = prePopulate;
  [self initialize__WithInt:size];
}

OrgApacheLuceneSearchHitQueue *new_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(jint size, jboolean prePopulate) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHitQueue, initWithInt_withBoolean_, size, prePopulate)
}

OrgApacheLuceneSearchHitQueue *create_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(jint size, jboolean prePopulate) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHitQueue, initWithInt_withBoolean_, size, prePopulate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHitQueue)
