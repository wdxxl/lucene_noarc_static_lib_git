//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/tokenattributes/CharTermAttribute.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"

@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttribute : NSObject

@end

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttribute

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "[C", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 10, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x401, 5, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(copyBufferWithCharArray:withInt:withInt:);
  methods[1].selector = @selector(buffer);
  methods[2].selector = @selector(resizeBufferWithInt:);
  methods[3].selector = @selector(setLengthWithInt:);
  methods[4].selector = @selector(setEmpty);
  methods[5].selector = @selector(appendWithJavaLangCharSequence:);
  methods[6].selector = @selector(appendWithJavaLangCharSequence:withInt:withInt:);
  methods[7].selector = @selector(appendWithChar:);
  methods[8].selector = @selector(appendWithNSString:);
  methods[9].selector = @selector(appendWithJavaLangStringBuilder:);
  methods[10].selector = @selector(appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "copyBuffer", "[CII", "resizeBuffer", "I", "setLength", "append", "LJavaLangCharSequence;", "LJavaLangCharSequence;II", "C", "LNSString;", "LJavaLangStringBuilder;", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesCharTermAttribute = { "CharTermAttribute", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute)
