//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/standard/std31/UAX29URLEmailTokenizerImpl31.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31

#if !defined (OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 || defined(INCLUDE_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31))
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_

#define RESTRICT_OrgApacheLuceneAnalysisStandardStandardTokenizerInterface 1
#define INCLUDE_OrgApacheLuceneAnalysisStandardStandardTokenizerInterface 1
#include "org/apache/lucene/analysis/standard/StandardTokenizerInterface.h"

@class JavaIoInputStream;
@class JavaIoReader;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

@interface OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 : NSObject < OrgApacheLuceneAnalysisStandardStandardTokenizerInterface >

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

- (jint)getNextToken;

- (void)getTextWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)t;

- (void)yybeginWithInt:(jint)newState;

- (jint)yychar;

- (jchar)yycharatWithInt:(jint)pos;

- (void)yyclose;

- (jint)yylength;

- (void)yypushbackWithInt:(jint)number;

- (void)yyresetWithJavaIoReader:(JavaIoReader *)reader;

- (jint)yystate;

- (NSString *)yytext;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_YYEOF();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_YYEOF -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, YYEOF, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_YYINITIAL();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_YYINITIAL 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, YYINITIAL, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_WORD_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_WORD_TYPE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, WORD_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_NUMERIC_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_NUMERIC_TYPE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, NUMERIC_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_SOUTH_EAST_ASIAN_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_SOUTH_EAST_ASIAN_TYPE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, SOUTH_EAST_ASIAN_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_IDEOGRAPHIC_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_IDEOGRAPHIC_TYPE 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, IDEOGRAPHIC_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_HIRAGANA_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_HIRAGANA_TYPE 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, HIRAGANA_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_KATAKANA_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_KATAKANA_TYPE 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, KATAKANA_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_HANGUL_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_HANGUL_TYPE 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, HANGUL_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_EMAIL_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_EMAIL_TYPE 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, EMAIL_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_get_URL_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_URL_TYPE 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31, URL_TYPE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *new_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *create_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoReader_(JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoInputStream_(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *self, JavaIoInputStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *new_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoInputStream_(JavaIoInputStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31 *create_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31_initWithJavaIoInputStream_(JavaIoInputStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31UAX29URLEmailTokenizerImpl31")
