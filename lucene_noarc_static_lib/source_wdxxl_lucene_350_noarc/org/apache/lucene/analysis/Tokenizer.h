//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/Tokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisTokenizer

#if !defined (OrgApacheLuceneAnalysisTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisTokenizer))
#define OrgApacheLuceneAnalysisTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenStream 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenStream 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;

@interface OrgApacheLuceneAnalysisTokenizer : OrgApacheLuceneAnalysisTokenStream {
 @public
  JavaIoReader *input_;
}

#pragma mark Public

- (void)close;

- (void)resetWithJavaIoReader:(JavaIoReader *)input;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input;

- (jint)correctOffsetWithInt:(jint)currentOff;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenizer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenizer, input_, JavaIoReader *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_init(OrgApacheLuceneAnalysisTokenizer *self);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisTokenizer *self, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeSource *source);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisTokenizer")