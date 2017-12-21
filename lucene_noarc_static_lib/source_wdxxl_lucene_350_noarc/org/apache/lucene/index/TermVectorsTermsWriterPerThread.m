//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermVectorsTermsWriterPerThread.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/ByteSliceReader.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/TermVectorsTermsWriter.h"
#include "org/apache/lucene/index/TermVectorsTermsWriterPerField.h"
#include "org/apache/lucene/index/TermVectorsTermsWriterPerThread.h"
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

__attribute__((unused)) static jboolean OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_clearLastVectorFieldName(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *self);

@implementation OrgApacheLuceneIndexTermVectorsTermsWriterPerThread

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)termsHashPerThread
                withOrgApacheLuceneIndexTermVectorsTermsWriter:(OrgApacheLuceneIndexTermVectorsTermsWriter *)termsWriter {
  OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(self, termsHashPerThread, termsWriter);
  return self;
}

- (void)startDocument {
  JreAssert((OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_clearLastVectorFieldName(self)), (@"org/apache/lucene/index/TermVectorsTermsWriterPerThread.java:44 condition failed: assert clearLastVectorFieldName();"));
  if (doc_ != nil) {
    [doc_ reset];
    ((OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *) nil_chk(doc_))->docID_ = ((OrgApacheLuceneIndexDocumentsWriter_DocState *) nil_chk(docState_))->docID_;
  }
}

- (OrgApacheLuceneIndexDocumentsWriter_DocWriter *)finishDocument {
  @try {
    return doc_;
  }
  @finally {
    JreStrongAssign(&doc_, nil);
  }
}

- (OrgApacheLuceneIndexTermsHashConsumerPerField *)addFieldWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
                                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return create_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexTermVectorsTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(termsHashPerField, self, fieldInfo);
}

- (void)abort {
  if (doc_ != nil) {
    [doc_ abort];
    JreStrongAssign(&doc_, nil);
  }
}

- (jboolean)clearLastVectorFieldName {
  return OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_clearLastVectorFieldName(self);
}

- (jboolean)vectorFieldsInOrderWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fi {
  @try {
    if (lastVectorFieldName_ != nil) return [lastVectorFieldName_ compareToWithId:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi))->name_] < 0;
    else return true;
  }
  @finally {
    JreStrongAssign(&lastVectorFieldName_, fi->name_);
  }
}

- (void)dealloc {
  RELEASE_(termsWriter_);
  RELEASE_(termsHashPerThread_);
  RELEASE_(docState_);
  RELEASE_(doc_);
  RELEASE_(vectorSliceReader_);
  RELEASE_(utf8Results_);
  RELEASE_(lastVectorFieldName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriter_DocWriter;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsHashConsumerPerField;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x10, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x10, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermsHashPerThread:withOrgApacheLuceneIndexTermVectorsTermsWriter:);
  methods[1].selector = @selector(startDocument);
  methods[2].selector = @selector(finishDocument);
  methods[3].selector = @selector(addFieldWithOrgApacheLuceneIndexTermsHashPerField:withOrgApacheLuceneIndexFieldInfo:);
  methods[4].selector = @selector(abort);
  methods[5].selector = @selector(clearLastVectorFieldName);
  methods[6].selector = @selector(vectorFieldsInOrderWithOrgApacheLuceneIndexFieldInfo:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termsWriter_", "LOrgApacheLuceneIndexTermVectorsTermsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsHashPerThread_", "LOrgApacheLuceneIndexTermsHashPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "doc_", "LOrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "vectorSliceReader_", "LOrgApacheLuceneIndexByteSliceReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "utf8Results_", "[LOrgApacheLuceneUtilUnicodeUtil_UTF8Result;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lastVectorFieldName_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermsHashPerThread;LOrgApacheLuceneIndexTermVectorsTermsWriter;", "addField", "LOrgApacheLuceneIndexTermsHashPerField;LOrgApacheLuceneIndexFieldInfo;", "vectorFieldsInOrder", "LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermVectorsTermsWriterPerThread = { "TermVectorsTermsWriterPerThread", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 7, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread;
}

@end

void OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *self, OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter) {
  OrgApacheLuceneIndexTermsHashConsumerPerThread_init(self);
  JreStrongAssignAndConsume(&self->vectorSliceReader_, new_OrgApacheLuceneIndexByteSliceReader_init());
  JreStrongAssignAndConsume(&self->utf8Results_, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init(), create_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init() } count:2 type:OrgApacheLuceneUtilUnicodeUtil_UTF8Result_class_()]);
  JreStrongAssign(&self->termsWriter_, termsWriter);
  JreStrongAssign(&self->termsHashPerThread_, termsHashPerThread);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexTermsHashPerThread *) nil_chk(termsHashPerThread))->docState_);
}

OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *new_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_, termsHashPerThread, termsWriter)
}

OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *create_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_, termsHashPerThread, termsWriter)
}

jboolean OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_clearLastVectorFieldName(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *self) {
  JreStrongAssign(&self->lastVectorFieldName_, nil);
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread)
