//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/IntBlockPool.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/IntBlockPool.h"

@interface OrgApacheLuceneIndexIntBlockPool () {
 @public
  OrgApacheLuceneIndexDocumentsWriter *docWriter_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIntBlockPool, docWriter_, OrgApacheLuceneIndexDocumentsWriter *)

@implementation OrgApacheLuceneIndexIntBlockPool

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter {
  OrgApacheLuceneIndexIntBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(self, docWriter);
  return self;
}

- (void)reset {
  if (bufferUpto_ != -1) {
    if (bufferUpto_ > 0) [((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_)) recycleIntBlocksWithIntArray2:buffers_ withInt:1 withInt:1 + bufferUpto_];
    bufferUpto_ = 0;
    intUpto_ = 0;
    intOffset_ = 0;
    JreStrongAssign(&buffer_, IOSObjectArray_Get(nil_chk(buffers_), 0));
  }
}

- (void)nextBuffer {
  if (1 + bufferUpto_ == ((IOSObjectArray *) nil_chk(buffers_))->size_) {
    IOSObjectArray *newBuffers = [IOSObjectArray arrayWithLength:JreFpToInt((buffers_->size_ * 1.5)) type:IOSClass_intArray(1)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffers_, 0, newBuffers, 0, buffers_->size_);
    JreStrongAssign(&buffers_, newBuffers);
  }
  JreStrongAssign(&buffer_, IOSObjectArray_Set(buffers_, 1 + bufferUpto_, [((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter_)) getIntBlock]));
  bufferUpto_++;
  intUpto_ = 0;
  intOffset_ += OrgApacheLuceneIndexDocumentsWriter_INT_BLOCK_SIZE;
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(buffer_);
  RELEASE_(docWriter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriter:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(nextBuffer);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffers_", "[[I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "bufferUpto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "intUpto_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "buffer_", "[I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "intOffset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "docWriter_", "LOrgApacheLuceneIndexDocumentsWriter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriter;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIntBlockPool = { "IntBlockPool", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 3, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIntBlockPool;
}

@end

void OrgApacheLuceneIndexIntBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexIntBlockPool *self, OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, [IOSObjectArray newArrayWithLength:10 type:IOSClass_intArray(1)]);
  self->bufferUpto_ = -1;
  self->intUpto_ = OrgApacheLuceneIndexDocumentsWriter_INT_BLOCK_SIZE;
  self->intOffset_ = -OrgApacheLuceneIndexDocumentsWriter_INT_BLOCK_SIZE;
  JreStrongAssign(&self->docWriter_, docWriter);
}

OrgApacheLuceneIndexIntBlockPool *new_OrgApacheLuceneIndexIntBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIntBlockPool, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

OrgApacheLuceneIndexIntBlockPool *create_OrgApacheLuceneIndexIntBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(OrgApacheLuceneIndexDocumentsWriter *docWriter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIntBlockPool, initWithOrgApacheLuceneIndexDocumentsWriter_, docWriter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIntBlockPool)
