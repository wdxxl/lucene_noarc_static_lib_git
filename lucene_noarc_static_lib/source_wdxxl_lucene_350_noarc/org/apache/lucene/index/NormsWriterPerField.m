//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/NormsWriterPerField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DocInverterPerField.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/InvertedDocEndConsumerPerField.h"
#include "org/apache/lucene/index/NormsWriterPerField.h"
#include "org/apache/lucene/index/NormsWriterPerThread.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/util/ArrayUtil.h"

@implementation OrgApacheLuceneIndexNormsWriterPerField

- (void)reset {
  JreStrongAssign(&docIDs_, OrgApacheLuceneUtilArrayUtil_shrinkWithIntArray_withInt_(docIDs_, upto_));
  JreStrongAssign(&norms_, OrgApacheLuceneUtilArrayUtil_shrinkWithByteArray_withInt_(norms_, upto_));
  upto_ = 0;
}

- (instancetype)initWithOrgApacheLuceneIndexDocInverterPerField:(OrgApacheLuceneIndexDocInverterPerField *)docInverterPerField
                   withOrgApacheLuceneIndexNormsWriterPerThread:(OrgApacheLuceneIndexNormsWriterPerThread *)perThread
                              withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  OrgApacheLuceneIndexNormsWriterPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(self, docInverterPerField, perThread, fieldInfo);
  return self;
}

- (void)abort {
  upto_ = 0;
}

- (jint)compareToWithId:(OrgApacheLuceneIndexNormsWriterPerField *)other {
  cast_chk(other, [OrgApacheLuceneIndexNormsWriterPerField class]);
  return [((NSString *) nil_chk(((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->name_)) compareToWithId:((OrgApacheLuceneIndexNormsWriterPerField *) nil_chk(other))->fieldInfo_->name_];
}

- (void)finish {
  if (((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_))->isIndexed_ && !fieldInfo_->omitNorms_) {
    if (((IOSIntArray *) nil_chk(docIDs_))->size_ <= upto_) {
      JreAssert((docIDs_->size_ == upto_), (@"org/apache/lucene/index/NormsWriterPerField.java:68 condition failed: assert docIDs.length == upto;"));
      JreStrongAssign(&docIDs_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(docIDs_, 1 + upto_));
    }
    if (((IOSByteArray *) nil_chk(norms_))->size_ <= upto_) {
      JreAssert((norms_->size_ == upto_), (@"org/apache/lucene/index/NormsWriterPerField.java:72 condition failed: assert norms.length == upto;"));
      JreStrongAssign(&norms_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(norms_, 1 + upto_));
    }
    jfloat norm = [((OrgApacheLuceneSearchSimilarity *) nil_chk(((OrgApacheLuceneIndexDocumentsWriter_DocState *) nil_chk(docState_))->similarity_)) computeNormWithNSString:fieldInfo_->name_ withOrgApacheLuceneIndexFieldInvertState:fieldState_];
    *IOSByteArray_GetRef(nil_chk(norms_), upto_) = [((OrgApacheLuceneSearchSimilarity *) nil_chk(docState_->similarity_)) encodeNormValueWithFloat:norm];
    *IOSIntArray_GetRef(nil_chk(docIDs_), upto_) = docState_->docID_;
    upto_++;
  }
}

- (void)dealloc {
  RELEASE_(perThread_);
  RELEASE_(fieldInfo_);
  RELEASE_(docState_);
  RELEASE_(docIDs_);
  RELEASE_(norms_);
  RELEASE_(fieldState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(reset);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexDocInverterPerField:withOrgApacheLuceneIndexNormsWriterPerThread:withOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(compareToWithId:);
  methods[4].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "perThread_", "LOrgApacheLuceneIndexNormsWriterPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfo_", "LOrgApacheLuceneIndexFieldInfo;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docIDs_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "norms_", "[B", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldState_", "LOrgApacheLuceneIndexFieldInvertState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocInverterPerField;LOrgApacheLuceneIndexNormsWriterPerThread;LOrgApacheLuceneIndexFieldInfo;", "compareTo", "LOrgApacheLuceneIndexNormsWriterPerField;", "Lorg/apache/lucene/index/InvertedDocEndConsumerPerField;Ljava/lang/Comparable<Lorg/apache/lucene/index/NormsWriterPerField;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNormsWriterPerField = { "NormsWriterPerField", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 7, -1, -1, -1, 3, -1 };
  return &_OrgApacheLuceneIndexNormsWriterPerField;
}

@end

void OrgApacheLuceneIndexNormsWriterPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexNormsWriterPerField *self, OrgApacheLuceneIndexDocInverterPerField *docInverterPerField, OrgApacheLuceneIndexNormsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  OrgApacheLuceneIndexInvertedDocEndConsumerPerField_init(self);
  JreStrongAssignAndConsume(&self->docIDs_, [IOSIntArray newArrayWithLength:1]);
  JreStrongAssignAndConsume(&self->norms_, [IOSByteArray newArrayWithLength:1]);
  JreStrongAssign(&self->perThread_, perThread);
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexNormsWriterPerThread *) nil_chk(perThread))->docState_);
  JreStrongAssign(&self->fieldState_, ((OrgApacheLuceneIndexDocInverterPerField *) nil_chk(docInverterPerField))->fieldState_);
}

OrgApacheLuceneIndexNormsWriterPerField *new_OrgApacheLuceneIndexNormsWriterPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexDocInverterPerField *docInverterPerField, OrgApacheLuceneIndexNormsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNormsWriterPerField, initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_, docInverterPerField, perThread, fieldInfo)
}

OrgApacheLuceneIndexNormsWriterPerField *create_OrgApacheLuceneIndexNormsWriterPerField_initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexDocInverterPerField *docInverterPerField, OrgApacheLuceneIndexNormsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNormsWriterPerField, initWithOrgApacheLuceneIndexDocInverterPerField_withOrgApacheLuceneIndexNormsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_, docInverterPerField, perThread, fieldInfo)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNormsWriterPerField)
