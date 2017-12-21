//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/FormatPostingsFieldsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "org/apache/lucene/index/DefaultSkipListWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/FormatPostingsFieldsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsFieldsWriter.h"
#include "org/apache/lucene/index/FormatPostingsTermsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsTermsWriter.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermInfosWriter.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/util/IOUtils.h"

@implementation OrgApacheLuceneIndexFormatPostingsFieldsWriter

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                           withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos {
  OrgApacheLuceneIndexFormatPostingsFieldsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_(self, state, fieldInfos);
  return self;
}

- (OrgApacheLuceneIndexFormatPostingsTermsConsumer *)addFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  [((OrgApacheLuceneIndexFormatPostingsTermsWriter *) nil_chk(termsWriter_)) setFieldWithOrgApacheLuceneIndexFieldInfo:field];
  return termsWriter_;
}

- (void)finish {
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ termsOut_, termsWriter_ } count:2 type:JavaIoCloseable_class_()]);
}

- (void)__javaClone:(OrgApacheLuceneIndexFormatPostingsFieldsWriter *)original {
  [super __javaClone:original];
  [termsWriter_ release];
}

- (void)dealloc {
  RELEASE_(dir_);
  RELEASE_(segment_);
  RELEASE_(termsOut_);
  RELEASE_(fieldInfos_);
  RELEASE_(skipListWriter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFormatPostingsTermsConsumer;", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneIndexFieldInfos:);
  methods[1].selector = @selector(addFieldWithOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dir_", "LOrgApacheLuceneStoreDirectory;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "segment_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsOut_", "LOrgApacheLuceneIndexTermInfosWriter;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsWriter_", "LOrgApacheLuceneIndexFormatPostingsTermsWriter;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "skipListWriter_", "LOrgApacheLuceneIndexDefaultSkipListWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "totalNumDocs_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentWriteState;LOrgApacheLuceneIndexFieldInfos;", "LJavaIoIOException;", "addField", "LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFormatPostingsFieldsWriter = { "FormatPostingsFieldsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 3, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFormatPostingsFieldsWriter;
}

@end

void OrgApacheLuceneIndexFormatPostingsFieldsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexFormatPostingsFieldsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  OrgApacheLuceneIndexFormatPostingsFieldsConsumer_init(self);
  JreStrongAssign(&self->dir_, ((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->directory_);
  JreStrongAssign(&self->segment_, state->segmentName_);
  self->totalNumDocs_ = state->numDocs_;
  JreStrongAssign(&self->fieldInfos_, fieldInfos);
  jboolean success = false;
  @try {
    JreStrongAssignAndConsume(&self->termsOut_, new_OrgApacheLuceneIndexTermInfosWriter_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_(self->dir_, self->segment_, fieldInfos, state->termIndexInterval_));
    JreStrongAssignAndConsume(&self->skipListWriter_, new_OrgApacheLuceneIndexDefaultSkipListWriter_initWithInt_withInt_withInt_withOrgApacheLuceneStoreIndexOutput_withOrgApacheLuceneStoreIndexOutput_(self->termsOut_->skipInterval_, self->termsOut_->maxSkipLevels_, self->totalNumDocs_, nil, nil));
    self->termsWriter_ = create_OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(state, self);
    success = true;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self->termsOut_, self->termsWriter_ } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneIndexFormatPostingsFieldsWriter *new_OrgApacheLuceneIndexFormatPostingsFieldsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFormatPostingsFieldsWriter, initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_, state, fieldInfos)
}

OrgApacheLuceneIndexFormatPostingsFieldsWriter *create_OrgApacheLuceneIndexFormatPostingsFieldsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFieldInfos *fieldInfos) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFormatPostingsFieldsWriter, initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFieldInfos_, state, fieldInfos)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFormatPostingsFieldsWriter)
