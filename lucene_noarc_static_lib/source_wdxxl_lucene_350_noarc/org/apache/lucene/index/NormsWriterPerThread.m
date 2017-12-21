//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/NormsWriterPerThread.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DocInverterPerField.h"
#include "org/apache/lucene/index/DocInverterPerThread.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/InvertedDocEndConsumerPerField.h"
#include "org/apache/lucene/index/InvertedDocEndConsumerPerThread.h"
#include "org/apache/lucene/index/NormsWriter.h"
#include "org/apache/lucene/index/NormsWriterPerField.h"
#include "org/apache/lucene/index/NormsWriterPerThread.h"

@implementation OrgApacheLuceneIndexNormsWriterPerThread

- (instancetype)initWithOrgApacheLuceneIndexDocInverterPerThread:(OrgApacheLuceneIndexDocInverterPerThread *)docInverterPerThread
                             withOrgApacheLuceneIndexNormsWriter:(OrgApacheLuceneIndexNormsWriter *)normsWriter {
  OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(self, docInverterPerThread, normsWriter);
  return self;
}

- (OrgApacheLuceneIndexInvertedDocEndConsumerPerField *)addFieldWithOrgApacheLuceneIndexDocInverterPerField:(OrgApacheLuceneIndexDocInverterPerField *)docInverterPerField
                                                                          withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return create_OrgApacheLuceneIndexNormsWriterPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(docInverterPerField, self, fieldInfo);
}

- (void)abort {
}

- (void)startDocument {
}

- (void)finishDocument {
}

- (jboolean)freeRAM {
  return false;
}

- (void)dealloc {
  RELEASE_(normsWriter_);
  RELEASE_(docState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexInvertedDocEndConsumerPerField;", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocInverterPerThread:withOrgApacheLuceneIndexNormsWriter:);
  methods[1].selector = @selector(addFieldWithOrgApacheLuceneIndexDocInverterPerField:withOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(startDocument);
  methods[4].selector = @selector(finishDocument);
  methods[5].selector = @selector(freeRAM);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "normsWriter_", "LOrgApacheLuceneIndexNormsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocInverterPerThread;LOrgApacheLuceneIndexNormsWriter;", "addField", "LOrgApacheLuceneIndexDocInverterPerField;LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNormsWriterPerThread = { "NormsWriterPerThread", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexNormsWriterPerThread;
}

@end

void OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexNormsWriterPerThread *self, OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter) {
  OrgApacheLuceneIndexInvertedDocEndConsumerPerThread_init(self);
  JreStrongAssign(&self->normsWriter_, normsWriter);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexDocInverterPerThread *) nil_chk(docInverterPerThread))->docState_);
}

OrgApacheLuceneIndexNormsWriterPerThread *new_OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNormsWriterPerThread, initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_, docInverterPerThread, normsWriter)
}

OrgApacheLuceneIndexNormsWriterPerThread *create_OrgApacheLuceneIndexNormsWriterPerThread_initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_(OrgApacheLuceneIndexDocInverterPerThread *docInverterPerThread, OrgApacheLuceneIndexNormsWriter *normsWriter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNormsWriterPerThread, initWithOrgApacheLuceneIndexDocInverterPerThread_withOrgApacheLuceneIndexNormsWriter_, docInverterPerThread, normsWriter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNormsWriterPerThread)
