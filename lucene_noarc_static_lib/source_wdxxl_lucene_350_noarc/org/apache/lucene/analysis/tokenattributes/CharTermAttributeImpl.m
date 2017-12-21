//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/nio/CharBuffer.h"
#include "java/util/stream/IntStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/TermAttribute.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl () {
 @public
  IOSCharArray *termBuffer_;
  jint termLength_;
}

- (void)growTermBufferWithInt:(jint)newSize;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, termBuffer_, IOSCharArray *)

inline jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_get_MIN_BUFFER_SIZE();
inline jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_set_MIN_BUFFER_SIZE(jint value);
inline jint *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_getRef_MIN_BUFFER_SIZE();
static jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE = 10;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, MIN_BUFFER_SIZE, jint)

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_copyBufferWithCharArray_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, IOSCharArray *buffer, jint offset, jint length);

__attribute__((unused)) static IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_setLengthWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint length);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$2();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$3();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$4();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$5();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$6();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$7();

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)term {
  return [NSString java_stringWithCharacters:termBuffer_ offset:0 length:termLength_];
}

- (void)copyBufferWithCharArray:(IOSCharArray *)buffer
                        withInt:(jint)offset
                        withInt:(jint)length {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_copyBufferWithCharArray_withInt_withInt_(self, buffer, offset, length);
}

- (void)setTermBufferWithCharArray:(IOSCharArray *)buffer
                           withInt:(jint)offset
                           withInt:(jint)length {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_copyBufferWithCharArray_withInt_withInt_(self, buffer, offset, length);
}

- (void)setTermBufferWithNSString:(NSString *)buffer {
  jint length = [((NSString *) nil_chk(buffer)) java_length];
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, length);
  [buffer java_getChars:0 sourceEnd:length destination:termBuffer_ destinationBegin:0];
  termLength_ = length;
}

- (void)setTermBufferWithNSString:(NSString *)buffer
                          withInt:(jint)offset
                          withInt:(jint)length {
  JreAssert((offset <= [((NSString *) nil_chk(buffer)) java_length]), (@"org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.java:64 condition failed: assert offset <= buffer.length();"));
  JreAssert((offset + length <= [buffer java_length]), (@"org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.java:65 condition failed: assert offset + length <= buffer.length();"));
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, length);
  [buffer java_getChars:offset sourceEnd:offset + length destination:termBuffer_ destinationBegin:0];
  termLength_ = length;
}

- (IOSCharArray *)buffer {
  return termBuffer_;
}

- (IOSCharArray *)termBuffer {
  return termBuffer_;
}

- (IOSCharArray *)resizeBufferWithInt:(jint)newSize {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, newSize);
}

- (IOSCharArray *)resizeTermBufferWithInt:(jint)newSize {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, newSize);
}

- (void)growTermBufferWithInt:(jint)newSize {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, newSize);
}

- (jint)termLength {
  return termLength_;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setLengthWithInt:(jint)length {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_setLengthWithInt_(self, length);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setEmpty {
  termLength_ = 0;
  return self;
}

- (void)setTermLengthWithInt:(jint)length {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_setLengthWithInt_(self, length);
}

- (jint)java_length {
  return termLength_;
}

- (jchar)charAtWithInt:(jint)index {
  if (index >= termLength_) @throw create_JavaLangIndexOutOfBoundsException_init();
  return IOSCharArray_Get(nil_chk(termBuffer_), index);
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  if (start > termLength_ || end > termLength_) @throw create_JavaLangIndexOutOfBoundsException_init();
  return [NSString java_stringWithCharacters:termBuffer_ offset:start length:end - start];
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (csq == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, 0, [csq java_length]);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                                                      withInt:(jint)start
                                                                                      withInt:(jint)end {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, start, end);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithChar:(jchar)c {
  *IOSCharArray_GetRef(nil_chk(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + 1)), termLength_++) = c;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithNSString:(NSString *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [s java_length];
  [s java_getChars:0 sourceEnd:len destination:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) destinationBegin:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangStringBuilder:(JavaLangStringBuilder *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [s java_length];
  [s getCharsWithInt:0 withInt:len withCharArray:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) withInt:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)ta {
  if (ta == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [ta java_length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([ta buffer], 0, OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len), termLength_, len);
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
}

- (NSUInteger)hash {
  jint code = termLength_;
  code = code * 31 + OrgApacheLuceneUtilArrayUtil_hashCodeWithCharArray_withInt_withInt_(termBuffer_, 0, termLength_);
  return code;
}

- (void)clear {
  termLength_ = 0;
}

- (id)java_clone {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *t = (OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) cast_chk([super java_clone], [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]);
  JreStrongAssignAndConsume(&((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(t))->termBuffer_, [IOSCharArray newArrayWithLength:self->termLength_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, t->termBuffer_, 0, self->termLength_);
  return t;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return true;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *o = ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) cast_chk(other, [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]));
    if (termLength_ != ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(o))->termLength_) return false;
    for (jint i = 0; i < termLength_; i++) {
      if (IOSCharArray_Get(nil_chk(termBuffer_), i) != IOSCharArray_Get(o->termBuffer_, i)) {
        return false;
      }
    }
    return true;
  }
  return false;
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:termBuffer_ offset:0 length:termLength_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() withNSString:@"term" withId:[self description]];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:target]) {
    id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_());
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(t)) copyBufferWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
  }
  else {
    id<OrgApacheLuceneAnalysisTokenattributesTermAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesTermAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesTermAttribute_class_());
    [((id<OrgApacheLuceneAnalysisTokenattributesTermAttribute>) nil_chk(t)) setTermBufferWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
  }
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

- (void)dealloc {
  RELEASE_(termBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 0, -1 },
    { NULL, "V", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, 4, -1 },
    { NULL, "V", 0x1, 3, 5, -1, -1, 6, -1 },
    { NULL, "V", 0x1, 3, 7, -1, -1, 8, -1 },
    { NULL, "[C", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, -1, -1, -1, -1, 9, -1 },
    { NULL, "[C", 0x11, 10, 11, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, 12, 11, -1, -1, 13, -1 },
    { NULL, "V", 0x2, 14, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, 15, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 16, 11, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 11, -1, -1, 18, -1 },
    { NULL, "I", 0x11, 19, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x11, 20, 11, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x11, 21, 22, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 24, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 25, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 26, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 27, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x11, 23, 28, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 29, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 30, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 31, 32, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 33, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 36, 37, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(term);
  methods[2].selector = @selector(copyBufferWithCharArray:withInt:withInt:);
  methods[3].selector = @selector(setTermBufferWithCharArray:withInt:withInt:);
  methods[4].selector = @selector(setTermBufferWithNSString:);
  methods[5].selector = @selector(setTermBufferWithNSString:withInt:withInt:);
  methods[6].selector = @selector(buffer);
  methods[7].selector = @selector(termBuffer);
  methods[8].selector = @selector(resizeBufferWithInt:);
  methods[9].selector = @selector(resizeTermBufferWithInt:);
  methods[10].selector = @selector(growTermBufferWithInt:);
  methods[11].selector = @selector(termLength);
  methods[12].selector = @selector(setLengthWithInt:);
  methods[13].selector = @selector(setEmpty);
  methods[14].selector = @selector(setTermLengthWithInt:);
  methods[15].selector = @selector(java_length);
  methods[16].selector = @selector(charAtWithInt:);
  methods[17].selector = @selector(subSequenceFrom:to:);
  methods[18].selector = @selector(appendWithJavaLangCharSequence:);
  methods[19].selector = @selector(appendWithJavaLangCharSequence:withInt:withInt:);
  methods[20].selector = @selector(appendWithChar:);
  methods[21].selector = @selector(appendWithNSString:);
  methods[22].selector = @selector(appendWithJavaLangStringBuilder:);
  methods[23].selector = @selector(appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:);
  methods[24].selector = @selector(appendNull);
  methods[25].selector = @selector(hash);
  methods[26].selector = @selector(clear);
  methods[27].selector = @selector(java_clone);
  methods[28].selector = @selector(isEqual:);
  methods[29].selector = @selector(description);
  methods[30].selector = @selector(reflectWithWithOrgApacheLuceneUtilAttributeReflector:);
  methods[31].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_BUFFER_SIZE", "I", .constantValue.asLong = 0, 0xa, -1, 38, -1, -1 },
    { "termBuffer_", "[C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$0, "copyBuffer", "[CII", "setTermBuffer", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$1, "LNSString;", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$2, "LNSString;II", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$3, (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$4, "resizeBuffer", "I", "resizeTermBuffer", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$5, "growTermBuffer", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$6, "setLength", "setTermLength", (void *)&OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$7, "length", "charAt", "subSequence", "II", "append", "LJavaLangCharSequence;", "LJavaLangCharSequence;II", "C", "LJavaLangStringBuilder;", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", "hashCode", "clone", "equals", "LNSObject;", "toString", "reflectWith", "LOrgApacheLuceneUtilAttributeReflector;", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", &OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl = { "CharTermAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 32, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  self->termLength_ = 0;
}

OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, init)
}

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_copyBufferWithCharArray_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, IOSCharArray *buffer, jint offset, jint length) {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, length);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, offset, self->termBuffer_, 0, length);
  self->termLength_ = length;
}

IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    IOSCharArray *newCharBuffer = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, newCharBuffer, 0, ((IOSCharArray *) nil_chk(self->termBuffer_))->size_);
    JreStrongAssign(&self->termBuffer_, newCharBuffer);
  }
  return self->termBuffer_;
}

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_setLengthWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint length) {
  if (length > ((IOSCharArray *) nil_chk(self->termBuffer_))->size_) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$IC", @"length ", length, @" exceeds the size of the termBuffer (", self->termBuffer_->size_, ')'));
  self->termLength_ = length;
  return self;
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end) {
  if (csq == nil) csq = @"null";
  jint len = end - start;
  jint csqlen = [csq java_length];
  if (len < 0 || start > csqlen || end > csqlen) @throw create_JavaLangIndexOutOfBoundsException_init();
  if (len == 0) return self;
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + len);
  if (len > 4) {
    if ([csq isKindOfClass:[NSString class]]) {
      [((NSString *) cast_chk(csq, [NSString class])) java_getChars:start sourceEnd:end destination:self->termBuffer_ destinationBegin:self->termLength_];
    }
    else if ([csq isKindOfClass:[JavaLangStringBuilder class]]) {
      [((JavaLangStringBuilder *) cast_chk(csq, [JavaLangStringBuilder class])) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:csq]) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) cast_check(csq, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_())) buffer], start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaNioCharBuffer class]] && [((JavaNioCharBuffer *) cast_chk(csq, [JavaNioCharBuffer class])) hasArray]) {
      JavaNioCharBuffer *cb = (JavaNioCharBuffer *) cast_chk(csq, [JavaNioCharBuffer class]);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([cb array], [cb arrayOffset] + [cb position] + start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaLangStringBuffer class]]) {
      [((JavaLangStringBuffer *) cast_chk(csq, [JavaLangStringBuffer class])) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else {
      while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
      return self;
    }
    self->termLength_ += len;
    return self;
  }
  else {
    while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
    return self;
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + 4);
  *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = 'n';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'u';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  return self;
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl__Annotations$7() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl)
