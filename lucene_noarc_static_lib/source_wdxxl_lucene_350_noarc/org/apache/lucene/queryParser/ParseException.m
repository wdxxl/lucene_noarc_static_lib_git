//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/queryParser/ParseException.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "org/apache/lucene/queryParser/ParseException.h"
#include "org/apache/lucene/queryParser/Token.h"

@implementation OrgApacheLuceneQueryParserParseException

- (instancetype)initWithOrgApacheLuceneQueryParserToken:(OrgApacheLuceneQueryParserToken *)currentTokenVal
                                          withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                      withNSStringArray:(IOSObjectArray *)tokenImageVal {
  OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(self, currentTokenVal, expectedTokenSequencesVal, tokenImageVal);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryParserParseException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneQueryParserParseException_initWithNSString_(self, message);
  return self;
}

- (NSString *)getMessage {
  if (!specialConstructor_) {
    return [super getMessage];
  }
  JavaLangStringBuffer *expected = create_JavaLangStringBuffer_init();
  jint maxSize = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(expectedTokenSequences_))->size_; i++) {
    if (maxSize < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences_, i)))->size_) {
      maxSize = ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences_, i)))->size_;
    }
    for (jint j = 0; j < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(nil_chk(expectedTokenSequences_), i)))->size_; j++) {
      [((JavaLangStringBuffer *) nil_chk([expected appendWithNSString:IOSObjectArray_Get(nil_chk(tokenImage_), IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences_, i)), j))])) appendWithChar:' '];
    }
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences_, i)), ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences_, i)))->size_ - 1) != 0) {
      [expected appendWithNSString:@"..."];
    }
    [((JavaLangStringBuffer *) nil_chk([expected appendWithNSString:eol_])) appendWithNSString:@"    "];
  }
  NSString *retval = @"Encountered \"";
  OrgApacheLuceneQueryParserToken *tok = ((OrgApacheLuceneQueryParserToken *) nil_chk(currentToken_))->next_;
  for (jint i = 0; i < maxSize; i++) {
    if (i != 0) JreStrAppend(&retval, "$", @" ");
    if (((OrgApacheLuceneQueryParserToken *) nil_chk(tok))->kind_ == 0) {
      JreStrAppend(&retval, "$", IOSObjectArray_Get(nil_chk(tokenImage_), 0));
      break;
    }
    JreStrAppend(&retval, "C$", ' ', IOSObjectArray_Get(nil_chk(tokenImage_), tok->kind_));
    JreStrAppend(&retval, "$", @" \"");
    JreStrAppend(&retval, "$", [self add_escapesWithNSString:tok->image_]);
    JreStrAppend(&retval, "$", @" \"");
    tok = tok->next_;
  }
  JreStrAppend(&retval, "$I$I", @"\" at line ", ((OrgApacheLuceneQueryParserToken *) nil_chk(((OrgApacheLuceneQueryParserToken *) nil_chk(currentToken_))->next_))->beginLine_, @", column ", currentToken_->next_->beginColumn_);
  JreStrAppend(&retval, "C$", '.', eol_);
  if (((IOSObjectArray *) nil_chk(expectedTokenSequences_))->size_ == 1) {
    JreStrAppend(&retval, "$$$", @"Was expecting:", eol_, @"    ");
  }
  else {
    JreStrAppend(&retval, "$$$", @"Was expecting one of:", eol_, @"    ");
  }
  JreStrAppend(&retval, "$", [expected description]);
  return retval;
}

- (NSString *)add_escapesWithNSString:(NSString *)str {
  JavaLangStringBuffer *retval = create_JavaLangStringBuffer_init();
  jchar ch;
  for (jint i = 0; i < [((NSString *) nil_chk(str)) java_length]; i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s java_substring:[s java_length] - 4 endIndex:[s java_length]])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

- (void)dealloc {
  RELEASE_(currentToken_);
  RELEASE_(expectedTokenSequences_);
  RELEASE_(tokenImage_);
  RELEASE_(eol_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueryParserToken:withIntArray2:withNSStringArray:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(getMessage);
  methods[4].selector = @selector(add_escapesWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "specialConstructor_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "currentToken_", "LOrgApacheLuceneQueryParserToken;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "expectedTokenSequences_", "[[I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "tokenImage_", "[LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "eol_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueryParserToken;[[I[LNSString;", "LNSString;", "add_escapes" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryParserParseException = { "ParseException", "org.apache.lucene.queryParser", ptrTable, methods, fields, 7, 0x1, 5, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryParserParseException;
}

@end

void OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserParseException *self, OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  JavaLangException_initWithNSString_(self, @"");
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
  self->specialConstructor_ = true;
  JreStrongAssign(&self->currentToken_, currentTokenVal);
  JreStrongAssign(&self->expectedTokenSequences_, expectedTokenSequencesVal);
  JreStrongAssign(&self->tokenImage_, tokenImageVal);
}

OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryParserParseException, initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_, currentTokenVal, expectedTokenSequencesVal, tokenImageVal)
}

OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryParserParseException, initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_, currentTokenVal, expectedTokenSequencesVal, tokenImageVal)
}

void OrgApacheLuceneQueryParserParseException_init(OrgApacheLuceneQueryParserParseException *self) {
  JavaLangException_init(self);
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
  self->specialConstructor_ = false;
}

OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryParserParseException, init)
}

OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryParserParseException, init)
}

void OrgApacheLuceneQueryParserParseException_initWithNSString_(OrgApacheLuceneQueryParserParseException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
  self->specialConstructor_ = false;
}

OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryParserParseException, initWithNSString_, message)
}

OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryParserParseException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryParserParseException)