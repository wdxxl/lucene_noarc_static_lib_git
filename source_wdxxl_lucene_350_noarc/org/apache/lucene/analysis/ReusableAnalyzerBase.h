//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/ReusableAnalyzerBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase")
#ifdef RESTRICT_OrgApacheLuceneAnalysisReusableAnalyzerBase
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisReusableAnalyzerBase

#if !defined (OrgApacheLuceneAnalysisReusableAnalyzerBase_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase || defined(INCLUDE_OrgApacheLuceneAnalysisReusableAnalyzerBase))
#define OrgApacheLuceneAnalysisReusableAnalyzerBase_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzer 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzer 1
#include "org/apache/lucene/analysis/Analyzer.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents;
@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisReusableAnalyzerBase : OrgApacheLuceneAnalysisAnalyzer

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneAnalysisTokenStream *)reusableTokenStreamWithNSString:(NSString *)fieldName
                                                       withJavaIoReader:(JavaIoReader *)reader;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader;

#pragma mark Protected

- (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName
                                                                                   withJavaIoReader:(JavaIoReader *)aReader;

- (JavaIoReader *)initReaderWithJavaIoReader:(JavaIoReader *)reader OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisReusableAnalyzerBase)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReusableAnalyzerBase_init(OrgApacheLuceneAnalysisReusableAnalyzerBase *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisReusableAnalyzerBase)

#endif

#if !defined (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase || defined(INCLUDE_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents))
#define OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_

@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisTokenizer;

@interface OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents : NSObject {
 @public
  OrgApacheLuceneAnalysisTokenizer *source_;
  OrgApacheLuceneAnalysisTokenStream *sink_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                  withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result;

#pragma mark Protected

- (OrgApacheLuceneAnalysisTokenStream *)getTokenStream;

- (jboolean)resetWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents, source_, OrgApacheLuceneAnalysisTokenizer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents, sink_, OrgApacheLuceneAnalysisTokenStream *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *self, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *new_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *create_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *self, OrgApacheLuceneAnalysisTokenizer *source);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *new_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(OrgApacheLuceneAnalysisTokenizer *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *create_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(OrgApacheLuceneAnalysisTokenizer *source);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReusableAnalyzerBase")
