//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/CharacterUtils.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "org/apache/lucene/util/CharacterUtils.h"
#include "org/apache/lucene/util/Version.h"

@class OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils;
@class OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils;

inline OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *OrgApacheLuceneUtilCharacterUtils_get_JAVA_4();
static OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *OrgApacheLuceneUtilCharacterUtils_JAVA_4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilCharacterUtils, JAVA_4, OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *)

inline OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *OrgApacheLuceneUtilCharacterUtils_get_JAVA_5();
static OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *OrgApacheLuceneUtilCharacterUtils_JAVA_5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilCharacterUtils, JAVA_5, OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *)

@interface OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils : OrgApacheLuceneUtilCharacterUtils

- (instancetype)init;

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset;

- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset;

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit;

- (jboolean)fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)buffer
                                                     withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils)

__attribute__((unused)) static void OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *new_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *create_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils)

@interface OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils : OrgApacheLuceneUtilCharacterUtils

- (instancetype)init;

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset;

- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset;

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit;

- (jboolean)fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)buffer
                                                     withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils)

__attribute__((unused)) static void OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *new_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *create_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils)

@interface OrgApacheLuceneUtilCharacterUtils_CharacterBuffer () {
 @public
  IOSCharArray *buffer_;
  jint offset_;
  jint length_;
  jchar lastTrailingHighSurrogate_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer, buffer_, IOSCharArray *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilCharacterUtils)

@implementation OrgApacheLuceneUtilCharacterUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCharacterUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilCharacterUtils *)getInstanceWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion {
  return OrgApacheLuceneUtilCharacterUtils_getInstanceWithOrgApacheLuceneUtilVersion_(matchVersion);
}

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)newCharacterBufferWithInt:(jint)bufferSize {
  return OrgApacheLuceneUtilCharacterUtils_newCharacterBufferWithInt_(bufferSize);
}

- (jboolean)fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)buffer
                                                     withJavaIoReader:(JavaIoReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCharacterUtils;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 8, 9, 10, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInstanceWithOrgApacheLuceneUtilVersion:);
  methods[2].selector = @selector(codePointAtWithCharArray:withInt:);
  methods[3].selector = @selector(codePointAtWithJavaLangCharSequence:withInt:);
  methods[4].selector = @selector(codePointAtWithCharArray:withInt:withInt:);
  methods[5].selector = @selector(newCharacterBufferWithInt:);
  methods[6].selector = @selector(fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "JAVA_4", "LOrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "JAVA_5", "LOrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LOrgApacheLuceneUtilVersion;", "codePointAt", "[CI", "LJavaLangCharSequence;I", "[CII", "newCharacterBuffer", "I", "fill", "LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;LJavaIoReader;", "LJavaIoIOException;", &OrgApacheLuceneUtilCharacterUtils_JAVA_4, &OrgApacheLuceneUtilCharacterUtils_JAVA_5, "LOrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils;LOrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils;LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharacterUtils = { "CharacterUtils", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 7, 2, -1, 13, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCharacterUtils;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilCharacterUtils class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilCharacterUtils_JAVA_4, new_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilCharacterUtils_JAVA_5, new_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilCharacterUtils)
  }
}

@end

void OrgApacheLuceneUtilCharacterUtils_init(OrgApacheLuceneUtilCharacterUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilCharacterUtils *OrgApacheLuceneUtilCharacterUtils_getInstanceWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  OrgApacheLuceneUtilCharacterUtils_initialize();
  return [((OrgApacheLuceneUtilVersion *) nil_chk(matchVersion)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_31)] ? OrgApacheLuceneUtilCharacterUtils_JAVA_5 : (id) OrgApacheLuceneUtilCharacterUtils_JAVA_4;
}

OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *OrgApacheLuceneUtilCharacterUtils_newCharacterBufferWithInt_(jint bufferSize) {
  OrgApacheLuceneUtilCharacterUtils_initialize();
  if (bufferSize < 2) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"buffersize must be >= 2");
  return create_OrgApacheLuceneUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_([IOSCharArray arrayWithLength:bufferSize], 0, 0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharacterUtils)

@implementation OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset {
  return JavaLangCharacter_codePointAtWithCharArray_withInt_(chars, offset);
}

- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset {
  return JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(seq, offset);
}

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit {
  return JavaLangCharacter_codePointAtWithCharArray_withInt_withInt_(chars, offset, limit);
}

- (jboolean)fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)buffer
                                                     withJavaIoReader:(JavaIoReader *)reader {
  IOSCharArray *charBuffer = ((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(buffer))->buffer_;
  buffer->offset_ = 0;
  *IOSCharArray_GetRef(nil_chk(charBuffer), 0) = buffer->lastTrailingHighSurrogate_;
  jint offset = buffer->lastTrailingHighSurrogate_ == 0 ? 0 : 1;
  buffer->lastTrailingHighSurrogate_ = 0;
  jint read = [((JavaIoReader *) nil_chk(reader)) readWithCharArray:charBuffer withInt:offset withInt:charBuffer->size_ - offset];
  if (read == -1) {
    buffer->length_ = offset;
    return offset != 0;
  }
  buffer->length_ = read + offset;
  if (buffer->length_ > 1 && JavaLangCharacter_isHighSurrogateWithChar_(IOSCharArray_Get(charBuffer, buffer->length_ - 1))) {
    buffer->lastTrailingHighSurrogate_ = IOSCharArray_Get(charBuffer, --buffer->length_);
  }
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(codePointAtWithCharArray:withInt:);
  methods[2].selector = @selector(codePointAtWithJavaLangCharSequence:withInt:);
  methods[3].selector = @selector(codePointAtWithCharArray:withInt:withInt:);
  methods[4].selector = @selector(fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "codePointAt", "[CI", "LJavaLangCharSequence;I", "[CII", "fill", "LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;LJavaIoReader;", "LJavaIoIOException;", "LOrgApacheLuceneUtilCharacterUtils;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils = { "Java5CharacterUtils", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x1a, 5, 0, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils;
}

@end

void OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *self) {
  OrgApacheLuceneUtilCharacterUtils_init(self);
}

OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *new_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils, init)
}

OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils *create_OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharacterUtils_Java5CharacterUtils)

@implementation OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset {
  return IOSCharArray_Get(nil_chk(chars), offset);
}

- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset {
  return [((id<JavaLangCharSequence>) nil_chk(seq)) charAtWithInt:offset];
}

- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit {
  if (offset >= limit) @throw create_JavaLangIndexOutOfBoundsException_initWithNSString_(@"offset must be less than limit");
  return IOSCharArray_Get(nil_chk(chars), offset);
}

- (jboolean)fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *)buffer
                                                     withJavaIoReader:(JavaIoReader *)reader {
  ((OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *) nil_chk(buffer))->offset_ = 0;
  jint read = [((JavaIoReader *) nil_chk(reader)) readWithCharArray:buffer->buffer_];
  if (read == -1) return false;
  buffer->length_ = read;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, 6, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(codePointAtWithCharArray:withInt:);
  methods[2].selector = @selector(codePointAtWithJavaLangCharSequence:withInt:);
  methods[3].selector = @selector(codePointAtWithCharArray:withInt:withInt:);
  methods[4].selector = @selector(fillWithOrgApacheLuceneUtilCharacterUtils_CharacterBuffer:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "codePointAt", "[CI", "LJavaLangCharSequence;I", "[CII", "fill", "LOrgApacheLuceneUtilCharacterUtils_CharacterBuffer;LJavaIoReader;", "LJavaIoIOException;", "LOrgApacheLuceneUtilCharacterUtils;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils = { "Java4CharacterUtils", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x1a, 5, 0, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils;
}

@end

void OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *self) {
  OrgApacheLuceneUtilCharacterUtils_init(self);
}

OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *new_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils, init)
}

OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils *create_OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharacterUtils_Java4CharacterUtils)

@implementation OrgApacheLuceneUtilCharacterUtils_CharacterBuffer

- (instancetype)initWithCharArray:(IOSCharArray *)buffer
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(self, buffer, offset, length);
  return self;
}

- (IOSCharArray *)getBuffer {
  return buffer_;
}

- (jint)getOffset {
  return offset_;
}

- (jint)getLength {
  return length_;
}

- (void)reset {
  offset_ = 0;
  length_ = 0;
  lastTrailingHighSurrogate_ = 0;
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithCharArray:withInt:withInt:);
  methods[1].selector = @selector(getBuffer);
  methods[2].selector = @selector(getOffset);
  methods[3].selector = @selector(getLength);
  methods[4].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "[C", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastTrailingHighSurrogate_", "C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[CII", "LOrgApacheLuceneUtilCharacterUtils;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCharacterUtils_CharacterBuffer = { "CharacterBuffer", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x19, 5, 4, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilCharacterUtils_CharacterBuffer;
}

@end

void OrgApacheLuceneUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *self, IOSCharArray *buffer, jint offset, jint length) {
  NSObject_init(self);
  self->lastTrailingHighSurrogate_ = 0;
  JreStrongAssign(&self->buffer_, buffer);
  self->offset_ = offset;
  self->length_ = length;
}

OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *new_OrgApacheLuceneUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(IOSCharArray *buffer, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer, initWithCharArray_withInt_withInt_, buffer, offset, length)
}

OrgApacheLuceneUtilCharacterUtils_CharacterBuffer *create_OrgApacheLuceneUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(IOSCharArray *buffer, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer, initWithCharArray_withInt_withInt_, buffer, offset, length)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCharacterUtils_CharacterBuffer)
