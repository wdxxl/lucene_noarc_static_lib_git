//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/SimpleAnalyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/LowerCaseTokenizer.h"
#include "org/apache/lucene/analysis/ReusableAnalyzerBase.h"
#include "org/apache/lucene/analysis/SimpleAnalyzer.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisSimpleAnalyzer () {
 @public
  OrgApacheLuceneUtilVersion *matchVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSimpleAnalyzer, matchVersion_, OrgApacheLuceneUtilVersion *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisSimpleAnalyzer__Annotations$0();

@implementation OrgApacheLuceneAnalysisSimpleAnalyzer

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion {
  OrgApacheLuceneAnalysisSimpleAnalyzer_initWithOrgApacheLuceneUtilVersion_(self, matchVersion);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisSimpleAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName
                                                                                   withJavaIoReader:(JavaIoReader *)reader {
  return create_OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(create_OrgApacheLuceneAnalysisLowerCaseTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(matchVersion_, reader));
}

- (void)dealloc {
  RELEASE_(matchVersion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, 1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents;", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilVersion:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(createComponentsWithNSString:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "matchVersion_", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilVersion;", (void *)&OrgApacheLuceneAnalysisSimpleAnalyzer__Annotations$0, "createComponents", "LNSString;LJavaIoReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSimpleAnalyzer = { "SimpleAnalyzer", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisSimpleAnalyzer;
}

@end

void OrgApacheLuceneAnalysisSimpleAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisSimpleAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion) {
  OrgApacheLuceneAnalysisReusableAnalyzerBase_init(self);
  JreStrongAssign(&self->matchVersion_, matchVersion);
}

OrgApacheLuceneAnalysisSimpleAnalyzer *new_OrgApacheLuceneAnalysisSimpleAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSimpleAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

OrgApacheLuceneAnalysisSimpleAnalyzer *create_OrgApacheLuceneAnalysisSimpleAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSimpleAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

void OrgApacheLuceneAnalysisSimpleAnalyzer_init(OrgApacheLuceneAnalysisSimpleAnalyzer *self) {
  OrgApacheLuceneAnalysisSimpleAnalyzer_initWithOrgApacheLuceneUtilVersion_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30));
}

OrgApacheLuceneAnalysisSimpleAnalyzer *new_OrgApacheLuceneAnalysisSimpleAnalyzer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSimpleAnalyzer, init)
}

OrgApacheLuceneAnalysisSimpleAnalyzer *create_OrgApacheLuceneAnalysisSimpleAnalyzer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSimpleAnalyzer, init)
}

IOSObjectArray *OrgApacheLuceneAnalysisSimpleAnalyzer__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSimpleAnalyzer)