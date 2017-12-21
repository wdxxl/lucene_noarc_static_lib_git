//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/CharTokenizer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Character.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/CharTokenizer.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/CharacterUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/apache/lucene/util/VirtualMethod.h"

@interface OrgApacheLuceneAnalysisCharTokenizer () {
 @public
  jint offset_;
  jint bufferIndex_;
  jint dataLen_;
  jint finalOffset_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  OrgApacheLuceneUtilCharacterUtils *charUtils_;
  OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *ioBuffer_;
  jboolean useOldAPI_;
}

- (jboolean)incrementTokenOld;

- (jboolean)useOldAPIWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharTokenizer, charUtils_, OrgApacheLuceneUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharTokenizer, ioBuffer_, OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)

inline jint OrgApacheLuceneAnalysisCharTokenizer_get_MAX_WORD_LEN();
#define OrgApacheLuceneAnalysisCharTokenizer_MAX_WORD_LEN 255
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCharTokenizer, MAX_WORD_LEN, jint)

inline jint OrgApacheLuceneAnalysisCharTokenizer_get_IO_BUFFER_SIZE();
#define OrgApacheLuceneAnalysisCharTokenizer_IO_BUFFER_SIZE 4096
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisCharTokenizer, IO_BUFFER_SIZE, jint)

inline OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneAnalysisCharTokenizer_get_isTokenCharMethod();
static OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneAnalysisCharTokenizer_isTokenCharMethod;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCharTokenizer, isTokenCharMethod, OrgApacheLuceneUtilVirtualMethod *)

inline OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneAnalysisCharTokenizer_get_normalizeMethod();
static OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneAnalysisCharTokenizer_normalizeMethod;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCharTokenizer, normalizeMethod, OrgApacheLuceneUtilVirtualMethod *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisCharTokenizer_incrementTokenOld(OrgApacheLuceneAnalysisCharTokenizer *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$2();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$3();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$4();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$5();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$6();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$7();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$8();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$9();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCharTokenizer)

@implementation OrgApacheLuceneAnalysisCharTokenizer

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, matchVersion, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
            withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                  withJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, matchVersion, source, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
withOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                  withJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, matchVersion, factory, input);
  return self;
}

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithJavaIoReader_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, source, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, factory, input);
  return self;
}

- (jboolean)isTokenCharWithChar:(jchar)c {
  return [self isTokenCharWithInt:(jint) c];
}

- (jchar)normalizeWithChar:(jchar)c {
  return (jchar) [self normalizeWithInt:(jint) c];
}

- (jboolean)isTokenCharWithInt:(jint)c {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"since LUCENE_31 subclasses of CharTokenizer must implement isTokenChar(int)");
}

- (jint)normalizeWithInt:(jint)c {
  return c;
}

- (jboolean)incrementToken {
  [self clearAttributes];
  if (useOldAPI_) return OrgApacheLuceneAnalysisCharTokenizer_incrementTokenOld(self);
  jint length = 0;
  jint start = -1;
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
  while (true) {
    if (bufferIndex_ >= dataLen_) {
      offset_ += dataLen_;
      if (![((OrgApacheLuceneUtilCharacterUtils *) nil_chk(charUtils_)) fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:ioBuffer_ withJavaIoReader:input_]) {
        dataLen_ = 0;
        if (length > 0) {
          break;
        }
        else {
          finalOffset_ = [self correctOffsetWithInt:offset_];
          return false;
        }
      }
      dataLen_ = [((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) getLength];
      bufferIndex_ = 0;
    }
    jint c = [((OrgApacheLuceneUtilCharacterUtils *) nil_chk(charUtils_)) codePointAtWithCharArray:[((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) getBuffer] withInt:bufferIndex_];
    bufferIndex_ += JavaLangCharacter_charCountWithInt_(c);
    if ([self isTokenCharWithInt:c]) {
      if (length == 0) {
        JreAssert((start == -1), (@"org/apache/lucene/analysis/CharTokenizer.java:291 condition failed: assert start == -1;"));
        start = offset_ + bufferIndex_ - 1;
      }
      else if (length >= ((IOSCharArray *) nil_chk(buffer))->size_ - 1) {
        buffer = [termAtt_ resizeBufferWithInt:2 + length];
      }
      length += JavaLangCharacter_toCharsWithInt_withCharArray_withInt_([self normalizeWithInt:c], buffer, length);
      if (length >= OrgApacheLuceneAnalysisCharTokenizer_MAX_WORD_LEN) break;
    }
    else if (length > 0) break;
  }
  [termAtt_ setLengthWithInt:length];
  JreAssert((start != -1), (@"org/apache/lucene/analysis/CharTokenizer.java:304 condition failed: assert start != -1;"));
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:start] withInt:finalOffset_ = [self correctOffsetWithInt:start + length]];
  return true;
}

- (jboolean)incrementTokenOld {
  return OrgApacheLuceneAnalysisCharTokenizer_incrementTokenOld(self);
}

- (void)end {
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:finalOffset_ withInt:finalOffset_];
}

- (void)resetWithJavaIoReader:(JavaIoReader *)input {
  [super resetWithJavaIoReader:input];
  bufferIndex_ = 0;
  offset_ = 0;
  dataLen_ = 0;
  finalOffset_ = 0;
  [((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) reset];
}

- (jboolean)useOldAPIWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion {
  return OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(self, matchVersion);
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(charUtils_);
  RELEASE_(ioBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, 4, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, 6, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, 8, -1 },
    { NULL, "Z", 0x4, 9, 10, -1, -1, 11, -1 },
    { NULL, "C", 0x4, 12, 10, -1, -1, 13, -1 },
    { NULL, "Z", 0x4, 9, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 12, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 15, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, 15, -1, 16, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 3, 15, -1, -1, -1 },
    { NULL, "Z", 0x2, 18, 19, -1, -1, 20, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilVersion:withJavaIoReader:);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilVersion:withOrgApacheLuceneUtilAttributeSource:withJavaIoReader:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilVersion:withOrgApacheLuceneUtilAttributeSource_AttributeFactory:withJavaIoReader:);
  methods[3].selector = @selector(initWithJavaIoReader:);
  methods[4].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:withJavaIoReader:);
  methods[5].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:withJavaIoReader:);
  methods[6].selector = @selector(isTokenCharWithChar:);
  methods[7].selector = @selector(normalizeWithChar:);
  methods[8].selector = @selector(isTokenCharWithInt:);
  methods[9].selector = @selector(normalizeWithInt:);
  methods[10].selector = @selector(incrementToken);
  methods[11].selector = @selector(incrementTokenOld);
  methods[12].selector = @selector(end);
  methods[13].selector = @selector(resetWithJavaIoReader:);
  methods[14].selector = @selector(useOldAPIWithOrgApacheLuceneUtilVersion:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "offset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferIndex_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dataLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "finalOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_WORD_LEN", "I", .constantValue.asInt = OrgApacheLuceneAnalysisCharTokenizer_MAX_WORD_LEN, 0x1a, -1, -1, -1, -1 },
    { "IO_BUFFER_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisCharTokenizer_IO_BUFFER_SIZE, 0x1a, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "charUtils_", "LOrgApacheLuceneUtilCharacterUtils;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "ioBuffer_", "LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "useOldAPI_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, 21 },
    { "isTokenCharMethod", "LOrgApacheLuceneUtilVirtualMethod;", .constantValue.asLong = 0, 0x1a, -1, 22, 23, 24 },
    { "normalizeMethod", "LOrgApacheLuceneUtilVirtualMethod;", .constantValue.asLong = 0, 0x1a, -1, 25, 23, 26 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilVersion;LJavaIoReader;", "LOrgApacheLuceneUtilVersion;LOrgApacheLuceneUtilAttributeSource;LJavaIoReader;", "LOrgApacheLuceneUtilVersion;LOrgApacheLuceneUtilAttributeSource_AttributeFactory;LJavaIoReader;", "LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$0, "LOrgApacheLuceneUtilAttributeSource;LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$1, "LOrgApacheLuceneUtilAttributeSource_AttributeFactory;LJavaIoReader;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$2, "isTokenChar", "C", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$3, "normalize", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$4, "I", "LJavaIoIOException;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$5, "reset", "useOldAPI", "LOrgApacheLuceneUtilVersion;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$6, (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$7, &OrgApacheLuceneAnalysisCharTokenizer_isTokenCharMethod, "Lorg/apache/lucene/util/VirtualMethod<Lorg/apache/lucene/analysis/CharTokenizer;>;", (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$8, &OrgApacheLuceneAnalysisCharTokenizer_normalizeMethod, (void *)&OrgApacheLuceneAnalysisCharTokenizer__Annotations$9 };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharTokenizer = { "CharTokenizer", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x401, 15, 13, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharTokenizer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCharTokenizer class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisCharTokenizer_isTokenCharMethod, new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneAnalysisCharTokenizer_class_(), @"isTokenChar", [IOSObjectArray arrayWithObjects:(id[]){ [IOSClass charClass] } count:1 type:IOSClass_class_()]));
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisCharTokenizer_normalizeMethod, new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneAnalysisCharTokenizer_class_(), @"normalize", [IOSObjectArray arrayWithObjects:(id[]){ [IOSClass charClass] } count:1 type:IOSClass_class_()]));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCharTokenizer)
  }
}

@end

void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *input) {
  OrgApacheLuceneAnalysisTokenizer_initWithJavaIoReader_(self, input);
  self->offset_ = 0;
  self->bufferIndex_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->ioBuffer_, OrgApacheLuceneUtilCharacterUtils_newCharacterBufferWithInt_(OrgApacheLuceneAnalysisCharTokenizer_IO_BUFFER_SIZE));
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneUtilCharacterUtils_getInstanceWithOrgApacheLuceneUtilVersion_(matchVersion));
  self->useOldAPI_ = OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(self, matchVersion);
}

void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, source, input);
  self->offset_ = 0;
  self->bufferIndex_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->ioBuffer_, OrgApacheLuceneUtilCharacterUtils_newCharacterBufferWithInt_(OrgApacheLuceneAnalysisCharTokenizer_IO_BUFFER_SIZE));
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneUtilCharacterUtils_getInstanceWithOrgApacheLuceneUtilVersion_(matchVersion));
  self->useOldAPI_ = OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(self, matchVersion);
}

void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, factory, input);
  self->offset_ = 0;
  self->bufferIndex_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->ioBuffer_, OrgApacheLuceneUtilCharacterUtils_newCharacterBufferWithInt_(OrgApacheLuceneAnalysisCharTokenizer_IO_BUFFER_SIZE));
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneUtilCharacterUtils_getInstanceWithOrgApacheLuceneUtilVersion_(matchVersion));
  self->useOldAPI_ = OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(self, matchVersion);
}

void OrgApacheLuceneAnalysisCharTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, JavaIoReader *input) {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), input);
}

void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input) {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), source, input);
}

void OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input) {
  OrgApacheLuceneAnalysisCharTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(self, JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_30), factory, input);
}

jboolean OrgApacheLuceneAnalysisCharTokenizer_incrementTokenOld(OrgApacheLuceneAnalysisCharTokenizer *self) {
  jint length = 0;
  jint start = -1;
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) buffer];
  IOSCharArray *oldIoBuffer = [((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(self->ioBuffer_)) getBuffer];
  while (true) {
    if (self->bufferIndex_ >= self->dataLen_) {
      self->offset_ += self->dataLen_;
      self->dataLen_ = [((JavaIoReader *) nil_chk(self->input_)) readWithCharArray:oldIoBuffer];
      if (self->dataLen_ == -1) {
        self->dataLen_ = 0;
        if (length > 0) {
          break;
        }
        else {
          self->finalOffset_ = [self correctOffsetWithInt:self->offset_];
          return false;
        }
      }
      self->bufferIndex_ = 0;
    }
    jchar c = IOSCharArray_Get(nil_chk(oldIoBuffer), self->bufferIndex_++);
    if ([self isTokenCharWithChar:c]) {
      if (length == 0) {
        JreAssert((start == -1), (@"org/apache/lucene/analysis/CharTokenizer.java:343 condition failed: assert start == -1;"));
        start = self->offset_ + self->bufferIndex_ - 1;
      }
      else if (length == ((IOSCharArray *) nil_chk(buffer))->size_) {
        buffer = [self->termAtt_ resizeBufferWithInt:1 + length];
      }
      *IOSCharArray_GetRef(nil_chk(buffer), length++) = [self normalizeWithChar:c];
      if (length == OrgApacheLuceneAnalysisCharTokenizer_MAX_WORD_LEN) break;
    }
    else if (length > 0) break;
  }
  [self->termAtt_ setLengthWithInt:length];
  JreAssert((start != -1), (@"org/apache/lucene/analysis/CharTokenizer.java:359 condition failed: assert start != -1;"));
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:start] withInt:[self correctOffsetWithInt:start + length]];
  return true;
}

jboolean OrgApacheLuceneAnalysisCharTokenizer_useOldAPIWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisCharTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion) {
  IOSClass *clazz = [self java_getClass];
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(matchVersion)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_31)] && ([((OrgApacheLuceneUtilVirtualMethod *) nil_chk(OrgApacheLuceneAnalysisCharTokenizer_isTokenCharMethod)) isOverriddenAsOfWithIOSClass:clazz] || [((OrgApacheLuceneUtilVirtualMethod *) nil_chk(OrgApacheLuceneAnalysisCharTokenizer_normalizeMethod)) isOverriddenAsOfWithIOSClass:clazz])) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"For matchVersion >= LUCENE_31, CharTokenizer subclasses must not override isTokenChar(char) or normalize(char).");
  return ![matchVersion onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_31)];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$7() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$8() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneAnalysisCharTokenizer__Annotations$9() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharTokenizer)
