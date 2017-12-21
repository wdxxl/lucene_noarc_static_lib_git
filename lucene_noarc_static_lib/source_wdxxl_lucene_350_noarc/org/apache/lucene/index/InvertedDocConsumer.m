//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/InvertedDocConsumer.java
//

#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocInverterPerThread.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/InvertedDocConsumer.h"
#include "org/apache/lucene/index/InvertedDocConsumerPerThread.h"
#include "org/apache/lucene/index/SegmentWriteState.h"

@implementation OrgApacheLuceneIndexInvertedDocConsumer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexInvertedDocConsumer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexInvertedDocConsumerPerThread *)addThreadWithOrgApacheLuceneIndexDocInverterPerThread:(OrgApacheLuceneIndexDocInverterPerThread *)docInverterPerThread {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)abort {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)threadsAndFields
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)freeRAM {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setFieldInfosWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos {
  JreStrongAssign(&self->fieldInfos_, fieldInfos);
}

- (void)dealloc {
  RELEASE_(fieldInfos_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexInvertedDocConsumerPerThread;", 0x400, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 2, 3, 4, 5, -1, -1 },
    { NULL, "Z", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addThreadWithOrgApacheLuceneIndexDocInverterPerThread:);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[4].selector = @selector(freeRAM);
  methods[5].selector = @selector(setFieldInfosWithOrgApacheLuceneIndexFieldInfos:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addThread", "LOrgApacheLuceneIndexDocInverterPerThread;", "flush", "LJavaUtilMap;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "(Ljava/util/Map<Lorg/apache/lucene/index/InvertedDocConsumerPerThread;Ljava/util/Collection<Lorg/apache/lucene/index/InvertedDocConsumerPerField;>;>;Lorg/apache/lucene/index/SegmentWriteState;)V", "setFieldInfos", "LOrgApacheLuceneIndexFieldInfos;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexInvertedDocConsumer = { "InvertedDocConsumer", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x400, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexInvertedDocConsumer;
}

@end

void OrgApacheLuceneIndexInvertedDocConsumer_init(OrgApacheLuceneIndexInvertedDocConsumer *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexInvertedDocConsumer)
