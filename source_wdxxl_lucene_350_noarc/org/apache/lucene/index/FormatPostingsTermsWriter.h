//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/FormatPostingsTermsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsTermsWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexFormatPostingsTermsWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsTermsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsTermsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFormatPostingsTermsWriter

#if !defined (OrgApacheLuceneIndexFormatPostingsTermsWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsTermsWriter || defined(INCLUDE_OrgApacheLuceneIndexFormatPostingsTermsWriter))
#define OrgApacheLuceneIndexFormatPostingsTermsWriter_

#define RESTRICT_OrgApacheLuceneIndexFormatPostingsTermsConsumer 1
#define INCLUDE_OrgApacheLuceneIndexFormatPostingsTermsConsumer 1
#include "org/apache/lucene/index/FormatPostingsTermsConsumer.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSCharArray;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFormatPostingsDocsConsumer;
@class OrgApacheLuceneIndexFormatPostingsDocsWriter;
@class OrgApacheLuceneIndexFormatPostingsFieldsWriter;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneIndexTermInfosWriter;

@interface OrgApacheLuceneIndexFormatPostingsTermsWriter : OrgApacheLuceneIndexFormatPostingsTermsConsumer < JavaIoCloseable > {
 @public
  __unsafe_unretained OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent_;
  __unsafe_unretained OrgApacheLuceneIndexFormatPostingsDocsWriter *docsWriter_;
  OrgApacheLuceneIndexTermInfosWriter *termsOut_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  IOSCharArray *currentTerm_;
  jint currentTermStart_;
  jlong freqStart_;
  jlong proxStart_;
}

#pragma mark Public

- (void)close;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
           withOrgApacheLuceneIndexFormatPostingsFieldsWriter:(OrgApacheLuceneIndexFormatPostingsFieldsWriter *)parent;

- (OrgApacheLuceneIndexFormatPostingsDocsConsumer *)addTermWithCharArray:(IOSCharArray *)text
                                                                 withInt:(jint)start;

- (void)finish;

- (void)setFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFormatPostingsTermsWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFormatPostingsTermsWriter, termsOut_, OrgApacheLuceneIndexTermInfosWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFormatPostingsTermsWriter, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFormatPostingsTermsWriter, currentTerm_, IOSCharArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexFormatPostingsTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent);

FOUNDATION_EXPORT OrgApacheLuceneIndexFormatPostingsTermsWriter *new_OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFormatPostingsTermsWriter *create_OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFormatPostingsTermsWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsTermsWriter")
