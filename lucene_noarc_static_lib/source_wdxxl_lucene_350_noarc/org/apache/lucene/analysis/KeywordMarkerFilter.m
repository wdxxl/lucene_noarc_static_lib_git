//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/KeywordMarkerFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/CharArraySet.h"
#include "org/apache/lucene/analysis/KeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisKeywordMarkerFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAttr_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  OrgApacheLuceneAnalysisCharArraySet *keywordSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisKeywordMarkerFilter, keywordAttr_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisKeywordMarkerFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisKeywordMarkerFilter, keywordSet_, OrgApacheLuceneAnalysisCharArraySet *)

@implementation OrgApacheLuceneAnalysisKeywordMarkerFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                   withOrgApacheLuceneAnalysisCharArraySet:(OrgApacheLuceneAnalysisCharArraySet *)keywordSet {
  OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(self, inArg, keywordSet);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                           withJavaUtilSet:(id<JavaUtilSet>)keywordSet {
  OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(self, inArg, keywordSet);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if ([((OrgApacheLuceneAnalysisCharArraySet *) nil_chk(keywordSet_)) containsWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0 withInt:[termAtt_ java_length]]) {
      [((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAttr_)) setKeywordWithBoolean:true];
    }
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(keywordAttr_);
  RELEASE_(termAtt_);
  RELEASE_(keywordSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 2, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisCharArraySet:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withJavaUtilSet:);
  methods[2].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "keywordAttr_", "LOrgApacheLuceneAnalysisTokenattributesKeywordAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "keywordSet_", "LOrgApacheLuceneAnalysisCharArraySet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisCharArraySet;", "LOrgApacheLuceneAnalysisTokenStream;LJavaUtilSet;", "(Lorg/apache/lucene/analysis/TokenStream;Ljava/util/Set<*>;)V", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisKeywordMarkerFilter = { "KeywordMarkerFilter", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisKeywordMarkerFilter;
}

@end

void OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->keywordAttr_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordSet_, keywordSet);
}

OrgApacheLuceneAnalysisKeywordMarkerFilter *new_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_, inArg, keywordSet)
}

OrgApacheLuceneAnalysisKeywordMarkerFilter *create_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisCharArraySet *keywordSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_, inArg, keywordSet)
}

void OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet) {
  OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCharArraySet_(self, inArg, [keywordSet isKindOfClass:[OrgApacheLuceneAnalysisCharArraySet class]] ? (OrgApacheLuceneAnalysisCharArraySet *) cast_chk(keywordSet, [OrgApacheLuceneAnalysisCharArraySet class]) : OrgApacheLuceneAnalysisCharArraySet_copy__WithOrgApacheLuceneUtilVersion_withJavaUtilSet_(JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_31), keywordSet));
}

OrgApacheLuceneAnalysisKeywordMarkerFilter *new_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_, inArg, keywordSet)
}

OrgApacheLuceneAnalysisKeywordMarkerFilter *create_OrgApacheLuceneAnalysisKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisTokenStream *inArg, id<JavaUtilSet> keywordSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_, inArg, keywordSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisKeywordMarkerFilter)
