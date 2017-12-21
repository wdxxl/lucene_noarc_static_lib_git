//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermsHashPerThread.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/ByteBlockPool.h"
#include "org/apache/lucene/index/CharBlockPool.h"
#include "org/apache/lucene/index/DocInverterPerField.h"
#include "org/apache/lucene/index/DocInverterPerThread.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IntBlockPool.h"
#include "org/apache/lucene/index/InvertedDocConsumerPerField.h"
#include "org/apache/lucene/index/InvertedDocConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHash.h"
#include "org/apache/lucene/index/TermsHashConsumer.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"

@implementation OrgApacheLuceneIndexTermsHashPerThread

- (instancetype)initWithOrgApacheLuceneIndexDocInverterPerThread:(OrgApacheLuceneIndexDocInverterPerThread *)docInverterPerThread
                               withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)termsHash
                               withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)nextTermsHash
                      withOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)primaryPerThread {
  OrgApacheLuceneIndexTermsHashPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_(self, docInverterPerThread, termsHash, nextTermsHash, primaryPerThread);
  return self;
}

- (OrgApacheLuceneIndexInvertedDocConsumerPerField *)addFieldWithOrgApacheLuceneIndexDocInverterPerField:(OrgApacheLuceneIndexDocInverterPerField *)docInverterPerField
                                                                       withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return create_OrgApacheLuceneIndexTermsHashPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexFieldInfo_(docInverterPerField, self, nextPerThread_, fieldInfo);
}

- (void)abort {
  @synchronized(self) {
    [self resetWithBoolean:true];
    @try {
      [((OrgApacheLuceneIndexTermsHashConsumerPerThread *) nil_chk(consumer_)) abort];
    }
    @finally {
      if (nextPerThread_ != nil) {
        [nextPerThread_ abort];
      }
    }
  }
}

- (void)startDocument {
  [((OrgApacheLuceneIndexTermsHashConsumerPerThread *) nil_chk(consumer_)) startDocument];
  if (nextPerThread_ != nil) [nextPerThread_->consumer_ startDocument];
}

- (OrgApacheLuceneIndexDocumentsWriter_DocWriter *)finishDocument {
  OrgApacheLuceneIndexDocumentsWriter_DocWriter *doc = [((OrgApacheLuceneIndexTermsHashConsumerPerThread *) nil_chk(consumer_)) finishDocument];
  OrgApacheLuceneIndexDocumentsWriter_DocWriter *doc2;
  if (nextPerThread_ != nil) doc2 = [nextPerThread_->consumer_ finishDocument];
  else doc2 = nil;
  if (doc == nil) return doc2;
  else {
    [doc setNextWithOrgApacheLuceneIndexDocumentsWriter_DocWriter:doc2];
    return doc;
  }
}

- (void)resetWithBoolean:(jboolean)recyclePostings {
  [((OrgApacheLuceneIndexIntBlockPool *) nil_chk(intPool_)) reset];
  [((OrgApacheLuceneIndexByteBlockPool *) nil_chk(bytePool_)) reset];
  if (primary_) [((OrgApacheLuceneIndexCharBlockPool *) nil_chk(charPool_)) reset];
}

- (void)dealloc {
  RELEASE_(termsHash_);
  RELEASE_(consumer_);
  RELEASE_(nextPerThread_);
  RELEASE_(charPool_);
  RELEASE_(intPool_);
  RELEASE_(bytePool_);
  RELEASE_(docState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexInvertedDocConsumerPerField;", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriter_DocWriter;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocInverterPerThread:withOrgApacheLuceneIndexTermsHash:withOrgApacheLuceneIndexTermsHash:withOrgApacheLuceneIndexTermsHashPerThread:);
  methods[1].selector = @selector(addFieldWithOrgApacheLuceneIndexDocInverterPerField:withOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(startDocument);
  methods[4].selector = @selector(finishDocument);
  methods[5].selector = @selector(resetWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termsHash_", "LOrgApacheLuceneIndexTermsHash;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "consumer_", "LOrgApacheLuceneIndexTermsHashConsumerPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "nextPerThread_", "LOrgApacheLuceneIndexTermsHashPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "charPool_", "LOrgApacheLuceneIndexCharBlockPool;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "intPool_", "LOrgApacheLuceneIndexIntBlockPool;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "bytePool_", "LOrgApacheLuceneIndexByteBlockPool;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "primary_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocInverterPerThread;LOrgApacheLuceneIndexTermsHash;LOrgApacheLuceneIndexTermsHash;LOrgApacheLuceneIndexTermsHashPerThread;", "addField", "LOrgApacheLuceneIndexDocInverterPerField;LOrgApacheLuceneIndexFieldInfo;", "LJavaIoIOException;", "reset", "Z" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermsHashPerThread = { "TermsHashPerThread", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 6, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermsHashPerThread;
}

@end

void OrgApacheLuceneIndexTermsHashPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexTermsHashPerThread *self, OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexTermsHash *nextTermsHash, OrgApacheLuceneIndexTermsHashPerThread *primaryPerThread) {
  OrgApacheLuceneIndexInvertedDocConsumerPerThread_init(self);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexDocInverterPerThread *) nil_chk(docInverterPerThread))->docState_);
  JreStrongAssign(&self->termsHash_, termsHash);
  JreStrongAssign(&self->consumer_, [((OrgApacheLuceneIndexTermsHashConsumer *) nil_chk(((OrgApacheLuceneIndexTermsHash *) nil_chk(termsHash))->consumer_)) addThreadWithOrgApacheLuceneIndexTermsHashPerThread:self]);
  if (nextTermsHash != nil) {
    JreStrongAssignAndConsume(&self->charPool_, new_OrgApacheLuceneIndexCharBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(termsHash->docWriter_));
    self->primary_ = true;
  }
  else {
    JreStrongAssign(&self->charPool_, ((OrgApacheLuceneIndexTermsHashPerThread *) nil_chk(primaryPerThread))->charPool_);
    self->primary_ = false;
  }
  JreStrongAssignAndConsume(&self->intPool_, new_OrgApacheLuceneIndexIntBlockPool_initWithOrgApacheLuceneIndexDocumentsWriter_(termsHash->docWriter_));
  JreStrongAssignAndConsume(&self->bytePool_, new_OrgApacheLuceneIndexByteBlockPool_initWithOrgApacheLuceneIndexByteBlockPool_Allocator_(((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(termsHash->docWriter_))->byteBlockAllocator_));
  if (nextTermsHash != nil) JreStrongAssign(&self->nextPerThread_, [nextTermsHash addThreadWithOrgApacheLuceneIndexDocInverterPerThread:docInverterPerThread withOrgApacheLuceneIndexTermsHashPerThread:self]);
  else JreStrongAssign(&self->nextPerThread_, nil);
}

OrgApacheLuceneIndexTermsHashPerThread *new_OrgApacheLuceneIndexTermsHashPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexTermsHash *nextTermsHash, OrgApacheLuceneIndexTermsHashPerThread *primaryPerThread) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermsHashPerThread, initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_, docInverterPerThread, termsHash, nextTermsHash, primaryPerThread)
}

OrgApacheLuceneIndexTermsHashPerThread *create_OrgApacheLuceneIndexTermsHashPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexTermsHash *termsHash, OrgApacheLuceneIndexTermsHash *nextTermsHash, OrgApacheLuceneIndexTermsHashPerThread *primaryPerThread) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermsHashPerThread, initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexTermsHashPerThread_, docInverterPerThread, termsHash, nextTermsHash, primaryPerThread)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermsHashPerThread)
