//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/StoredFieldsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexStoredFieldsWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexStoredFieldsWriter

#if !defined (OrgApacheLuceneIndexStoredFieldsWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter || defined(INCLUDE_OrgApacheLuceneIndexStoredFieldsWriter))
#define OrgApacheLuceneIndexStoredFieldsWriter_

@class IOSObjectArray;
@class OrgApacheLuceneIndexDocumentsWriter;
@class OrgApacheLuceneIndexDocumentsWriter_DocState;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFieldsWriter;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexStoredFieldsWriterPerThread;
@class OrgApacheLuceneIndexStoredFieldsWriter_PerDoc;

@interface OrgApacheLuceneIndexStoredFieldsWriter : NSObject {
 @public
  OrgApacheLuceneIndexFieldsWriter *fieldsWriter_;
  OrgApacheLuceneIndexDocumentsWriter *docWriter_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  jint lastDocID_;
  IOSObjectArray *docFreeList_;
  jint freeCount_;
  jint allocCount_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriter:(OrgApacheLuceneIndexDocumentsWriter *)docWriter
                         withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos;

- (OrgApacheLuceneIndexStoredFieldsWriterPerThread *)addThreadWithOrgApacheLuceneIndexDocumentsWriter_DocState:(OrgApacheLuceneIndexDocumentsWriter_DocState *)docState;

- (void)flushWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

#pragma mark Package-Private

- (void)abort;

- (void)fillWithInt:(jint)docID;

- (void)finishDocumentWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)perDoc;

- (void)freeWithOrgApacheLuceneIndexStoredFieldsWriter_PerDoc:(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)perDoc;

- (OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *)getPerDoc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexStoredFieldsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter, fieldsWriter_, OrgApacheLuceneIndexFieldsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter, docWriter_, OrgApacheLuceneIndexDocumentsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter, docFreeList_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexStoredFieldsWriter *self, OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos);

FOUNDATION_EXPORT OrgApacheLuceneIndexStoredFieldsWriter *new_OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexStoredFieldsWriter *create_OrgApacheLuceneIndexStoredFieldsWriter_initWithOrgApacheLuceneIndexDocumentsWriter_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexDocumentsWriter *docWriter, OrgApacheLuceneIndexFieldInfos *fieldInfos);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexStoredFieldsWriter)

#endif

#if !defined (OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_) && (INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter || defined(INCLUDE_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc))
#define OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_

#define RESTRICT_OrgApacheLuceneIndexDocumentsWriter 1
#define INCLUDE_OrgApacheLuceneIndexDocumentsWriter_DocWriter 1
#include "org/apache/lucene/index/DocumentsWriter.h"

@class OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer;
@class OrgApacheLuceneIndexStoredFieldsWriter;
@class OrgApacheLuceneStoreRAMOutputStream;

@interface OrgApacheLuceneIndexStoredFieldsWriter_PerDoc : OrgApacheLuceneIndexDocumentsWriter_DocWriter {
 @public
  OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *buffer_;
  OrgApacheLuceneStoreRAMOutputStream *fdt_;
  jint numStoredFields_;
}

#pragma mark Public

- (void)finish;

- (jlong)sizeInBytes;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexStoredFieldsWriter:(OrgApacheLuceneIndexStoredFieldsWriter *)outer$;

- (void)abort;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc, buffer_, OrgApacheLuceneIndexDocumentsWriter_PerDocBuffer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc, fdt_, OrgApacheLuceneStoreRAMOutputStream *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *self, OrgApacheLuceneIndexStoredFieldsWriter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *new_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexStoredFieldsWriter_PerDoc *create_OrgApacheLuceneIndexStoredFieldsWriter_PerDoc_initWithOrgApacheLuceneIndexStoredFieldsWriter_(OrgApacheLuceneIndexStoredFieldsWriter *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexStoredFieldsWriter_PerDoc)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexStoredFieldsWriter")
