//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/DocFieldProcessor.java
//

#include "J2ObjC_source.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocConsumer.h"
#include "org/apache/lucene/index/DocConsumerPerThread.h"
#include "org/apache/lucene/index/DocFieldConsumer.h"
#include "org/apache/lucene/index/DocFieldConsumerPerThread.h"
#include "org/apache/lucene/index/DocFieldProcessor.h"
#include "org/apache/lucene/index/DocFieldProcessorPerThread.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/DocumentsWriterThreadState.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/StoredFieldsWriter.h"
#include "org/apache/lucene/store/Directory.h"

@implementation OrgApacheLuceneIndexDocFieldProcessor

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter
                   withOrgApacheLuceneIndexDocFieldConsumer:(OrgApacheLuceneIndexDocFieldConsumer *)consumer {
  OrgApacheLuceneIndexDocFieldProcessor_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_(self, docWriter, consumer);
  return self;
}

- (void)flushWithJavaUtilCollection:(id<JavaUtilCollection>)threads
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  id<JavaUtilMap> childThreadsAndFields = create_JavaUtilHashMap_init();
  for (OrgApacheLuceneIndexDocConsumerPerThread * __strong thread in nil_chk(threads)) {
    OrgApacheLuceneIndexDocFieldProcessorPerThread *perThread = (OrgApacheLuceneIndexDocFieldProcessorPerThread *) cast_chk(thread, [OrgApacheLuceneIndexDocFieldProcessorPerThread class]);
    [childThreadsAndFields putWithId:((OrgApacheLuceneIndexDocFieldProcessorPerThread *) nil_chk(perThread))->consumer_ withId:[perThread fields]];
    [perThread trimFieldsWithOrgApacheLuceneIndexSegmentWriteState:state];
  }
  [((OrgApacheLuceneIndexStoredFieldsWriter *) nil_chk(fieldsWriter_)) flushWithOrgApacheLuceneIndexSegmentWriteState:state];
  [((OrgApacheLuceneIndexDocFieldConsumer *) nil_chk(consumer_)) flushWithJavaUtilMap:childThreadsAndFields withOrgApacheLuceneIndexSegmentWriteState:state];
  NSString *fileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentName_, OrgApacheLuceneIndexIndexFileNames_FIELD_INFOS_EXTENSION);
  [((OrgApacheLuceneIndexFieldInfos *) nil_chk(fieldInfos_)) writeWithOrgApacheLuceneStoreDirectory:state->directory_ withNSString:fileName];
}

- (void)abort {
  @try {
    [((OrgApacheLuceneIndexStoredFieldsWriter *) nil_chk(fieldsWriter_)) abort];
  }
  @finally {
    [((OrgApacheLuceneIndexDocFieldConsumer *) nil_chk(consumer_)) abort];
  }
}

- (jboolean)freeRAM {
  return [((OrgApacheLuceneIndexDocFieldConsumer *) nil_chk(consumer_)) freeRAM];
}

- (OrgApacheLuceneIndexDocConsumerPerThread *)addThreadWithOrgApacheLuceneIndexDocumentsWriterThreadState:(OrgApacheLuceneIndexDocumentsWriterThreadState *)threadState {
  return create_OrgApacheLuceneIndexDocFieldProcessorPerThread_initWithOrgApacheLuceneIndexDocumentsWriterThreadState_withOrgApacheLuceneIndexDocFieldProcessor_(threadState, self);
}

- (void)dealloc {
  RELEASE_(docWriter_);
  RELEASE_(fieldInfos_);
  RELEASE_(consumer_);
  RELEASE_(fieldsWriter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, 4, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocConsumerPerThread;", 0x1, 5, 6, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexDocumentsWriter:withOrgApacheLuceneIndexDocFieldConsumer:);
  methods[1].selector = @selector(flushWithJavaUtilCollection:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[2].selector = @selector(abort);
  methods[3].selector = @selector(freeRAM);
  methods[4].selector = @selector(addThreadWithOrgApacheLuceneIndexDocumentsWriterThreadState:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docWriter_", "LOrgApacheLuceneIndexDocumentsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfos_", "LOrgApacheLuceneIndexFieldInfos;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "consumer_", "LOrgApacheLuceneIndexDocFieldConsumer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldsWriter_", "LOrgApacheLuceneIndexStoredFieldsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexDocumentsWriter;LOrgApacheLuceneIndexDocFieldConsumer;", "flush", "LJavaUtilCollection;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "(Ljava/util/Collection<Lorg/apache/lucene/index/DocConsumerPerThread;>;Lorg/apache/lucene/index/SegmentWriteState;)V", "addThread", "LOrgApacheLuceneIndexDocumentsWriterThreadState;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocFieldProcessor = { "DocFieldProcessor", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexDocFieldProcessor;
}

@end

void OrgApacheLuceneIndexDocFieldProcessor_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_(OrgApacheLuceneIndexDocFieldProcessor *self, OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexDocFieldConsumer *consumer) {
  OrgApacheLuceneIndexDocConsumer_init(self);
  JreStrongAssign(&self->docWriter_, docWriter);
  JreStrongAssign(&self->consumer_, consumer);
  JreStrongAssign(&self->fieldInfos_, [((OrgApacheLuceneIndexDocumentsWriter *) nil_chk(docWriter)) getFieldInfos]);
  [((OrgApacheLuceneIndexDocFieldConsumer *) nil_chk(consumer)) setFieldInfosWithOrgApacheLuceneIndexFieldInfos:self->fieldInfos_];
  JreStrongAssignAndConsume(&self->fieldsWriter_, new_OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(docWriter, self->fieldInfos_));
}

OrgApacheLuceneIndexDocFieldProcessor *new_OrgApacheLuceneIndexDocFieldProcessor_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexDocFieldConsumer *consumer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexDocFieldProcessor, initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_, docWriter, consumer)
}

OrgApacheLuceneIndexDocFieldProcessor *create_OrgApacheLuceneIndexDocFieldProcessor_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexDocFieldConsumer *consumer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexDocFieldProcessor, initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexDocFieldConsumer_, docWriter, consumer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocFieldProcessor)
