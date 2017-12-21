//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/English.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "org/apache/lucene/util/English.h"

@interface OrgApacheLuceneUtilEnglish ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilEnglish_init(OrgApacheLuceneUtilEnglish *self);

__attribute__((unused)) static OrgApacheLuceneUtilEnglish *new_OrgApacheLuceneUtilEnglish_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilEnglish *create_OrgApacheLuceneUtilEnglish_init();

@implementation OrgApacheLuceneUtilEnglish

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilEnglish_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)longToEnglishWithLong:(jlong)i {
  return OrgApacheLuceneUtilEnglish_longToEnglishWithLong_(i);
}

+ (void)longToEnglishWithLong:(jlong)i
    withJavaLangStringBuilder:(JavaLangStringBuilder *)result {
  OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i, result);
}

+ (NSString *)intToEnglishWithInt:(jint)i {
  return OrgApacheLuceneUtilEnglish_intToEnglishWithInt_(i);
}

+ (void)intToEnglishWithInt:(jint)i
  withJavaLangStringBuilder:(JavaLangStringBuilder *)result {
  OrgApacheLuceneUtilEnglish_intToEnglishWithInt_withJavaLangStringBuilder_(i, result);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneUtilEnglish_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(longToEnglishWithLong:);
  methods[2].selector = @selector(longToEnglishWithLong:withJavaLangStringBuilder:);
  methods[3].selector = @selector(intToEnglishWithInt:);
  methods[4].selector = @selector(intToEnglishWithInt:withJavaLangStringBuilder:);
  methods[5].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "longToEnglish", "J", "JLJavaLangStringBuilder;", "intToEnglish", "I", "ILJavaLangStringBuilder;", "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilEnglish = { "English", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x11, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilEnglish;
}

@end

void OrgApacheLuceneUtilEnglish_init(OrgApacheLuceneUtilEnglish *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilEnglish *new_OrgApacheLuceneUtilEnglish_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilEnglish, init)
}

OrgApacheLuceneUtilEnglish *create_OrgApacheLuceneUtilEnglish_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilEnglish, init)
}

NSString *OrgApacheLuceneUtilEnglish_longToEnglishWithLong_(jlong i) {
  OrgApacheLuceneUtilEnglish_initialize();
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i, result);
  return [result description];
}

void OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(jlong i, JavaLangStringBuilder *result) {
  OrgApacheLuceneUtilEnglish_initialize();
  if (i == 0) {
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"zero"];
    return;
  }
  if (i < 0) {
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"minus "];
    i = -i;
  }
  if (i >= 1000000000000000000l) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000000000000000000l, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"quintillion, "];
    i = i % 1000000000000000000l;
  }
  if (i >= 1000000000000000l) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000000000000000l, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"quadrillion, "];
    i = i % 1000000000000000l;
  }
  if (i >= 1000000000000l) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000000000000l, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"trillion, "];
    i = i % 1000000000000l;
  }
  if (i >= 1000000000) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000000000, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"billion, "];
    i = i % 1000000000;
  }
  if (i >= 1000000) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000000, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"million, "];
    i = i % 1000000;
  }
  if (i >= 1000) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 1000, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"thousand, "];
    i = i % 1000;
  }
  if (i >= 100) {
    OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i / 100, result);
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"hundred "];
    i = i % 100;
  }
  if (i >= 20) {
    switch (((jint) i) / 10) {
      case 9:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"ninety"];
      break;
      case 8:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"eighty"];
      break;
      case 7:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"seventy"];
      break;
      case 6:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"sixty"];
      break;
      case 5:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"fifty"];
      break;
      case 4:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"forty"];
      break;
      case 3:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"thirty"];
      break;
      case 2:
      [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"twenty"];
      break;
    }
    i = i % 10;
    if (i == 0) [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@" "];
    else [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"-"];
  }
  switch ((jint) i) {
    case 19:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"nineteen "];
    break;
    case 18:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"eighteen "];
    break;
    case 17:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"seventeen "];
    break;
    case 16:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"sixteen "];
    break;
    case 15:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"fifteen "];
    break;
    case 14:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"fourteen "];
    break;
    case 13:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"thirteen "];
    break;
    case 12:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"twelve "];
    break;
    case 11:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"eleven "];
    break;
    case 10:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"ten "];
    break;
    case 9:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"nine "];
    break;
    case 8:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"eight "];
    break;
    case 7:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"seven "];
    break;
    case 6:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"six "];
    break;
    case 5:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"five "];
    break;
    case 4:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"four "];
    break;
    case 3:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"three "];
    break;
    case 2:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"two "];
    break;
    case 1:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@"one "];
    break;
    case 0:
    [((JavaLangStringBuilder *) nil_chk(result)) appendWithNSString:@""];
    break;
  }
}

NSString *OrgApacheLuceneUtilEnglish_intToEnglishWithInt_(jint i) {
  OrgApacheLuceneUtilEnglish_initialize();
  JavaLangStringBuilder *result = create_JavaLangStringBuilder_init();
  OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i, result);
  return [result description];
}

void OrgApacheLuceneUtilEnglish_intToEnglishWithInt_withJavaLangStringBuilder_(jint i, JavaLangStringBuilder *result) {
  OrgApacheLuceneUtilEnglish_initialize();
  OrgApacheLuceneUtilEnglish_longToEnglishWithLong_withJavaLangStringBuilder_(i, result);
}

void OrgApacheLuceneUtilEnglish_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneUtilEnglish_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:OrgApacheLuceneUtilEnglish_longToEnglishWithLong_(JavaLangLong_parseLongWithNSString_(IOSObjectArray_Get(nil_chk(args), 0)))];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilEnglish)
