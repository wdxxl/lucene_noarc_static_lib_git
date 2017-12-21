//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/Payload.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/Payload.h"
#include "org/apache/lucene/util/ArrayUtil.h"

@implementation OrgApacheLuceneIndexPayload

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexPayload_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  OrgApacheLuceneIndexPayload_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneIndexPayload_initWithByteArray_withInt_withInt_(self, data, offset, length);
  return self;
}

- (void)setDataWithByteArray:(IOSByteArray *)data {
  [self setDataWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_];
}

- (void)setDataWithByteArray:(IOSByteArray *)data
                     withInt:(jint)offset
                     withInt:(jint)length {
  JreStrongAssign(&self->data_, data);
  self->offset_ = offset;
  self->length_ = length;
}

- (IOSByteArray *)getData {
  return self->data_;
}

- (jint)getOffset {
  return self->offset_;
}

- (jint)length {
  return self->length_;
}

- (jbyte)byteAtWithInt:(jint)index {
  if (0 <= index && index < self->length_) {
    return IOSByteArray_Get(nil_chk(self->data_), self->offset_ + index);
  }
  @throw create_JavaLangArrayIndexOutOfBoundsException_initWithInt_(index);
}

- (IOSByteArray *)toByteArray {
  IOSByteArray *retArray = [IOSByteArray arrayWithLength:self->length_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->data_, self->offset_, retArray, 0, self->length_);
  return retArray;
}

- (void)copyToWithByteArray:(IOSByteArray *)target
                    withInt:(jint)targetOffset {
  if (self->length_ > ((IOSByteArray *) nil_chk(target))->size_ + targetOffset) {
    @throw create_JavaLangArrayIndexOutOfBoundsException_init();
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->data_, self->offset_, target, targetOffset, self->length_);
}

- (id)java_clone {
  @try {
    OrgApacheLuceneIndexPayload *clone = (OrgApacheLuceneIndexPayload *) cast_chk([super java_clone], [OrgApacheLuceneIndexPayload class]);
    if (offset_ == 0 && length_ == ((IOSByteArray *) nil_chk(data_))->size_) {
      JreStrongAssign(&((OrgApacheLuceneIndexPayload *) nil_chk(clone))->data_, [((IOSByteArray *) nil_chk(data_)) java_clone]);
    }
    else {
      JreStrongAssign(&((OrgApacheLuceneIndexPayload *) nil_chk(clone))->data_, [self toByteArray]);
      clone->offset_ = 0;
    }
    return clone;
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) return true;
  if ([obj isKindOfClass:[OrgApacheLuceneIndexPayload class]]) {
    OrgApacheLuceneIndexPayload *other = (OrgApacheLuceneIndexPayload *) cast_chk(obj, [OrgApacheLuceneIndexPayload class]);
    if (length_ == ((OrgApacheLuceneIndexPayload *) nil_chk(other))->length_) {
      for (jint i = 0; i < length_; i++) if (IOSByteArray_Get(nil_chk(data_), offset_ + i) != IOSByteArray_Get(other->data_, other->offset_ + i)) return false;
      return true;
    }
    else return false;
  }
  else return false;
}

- (NSUInteger)hash {
  return OrgApacheLuceneUtilArrayUtil_hashCodeWithByteArray_withInt_withInt_(data_, offset_, offset_ + length_);
}

- (void)dealloc {
  RELEASE_(data_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithByteArray:);
  methods[2].selector = @selector(initWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(setDataWithByteArray:);
  methods[4].selector = @selector(setDataWithByteArray:withInt:withInt:);
  methods[5].selector = @selector(getData);
  methods[6].selector = @selector(getOffset);
  methods[7].selector = @selector(length);
  methods[8].selector = @selector(byteAtWithInt:);
  methods[9].selector = @selector(toByteArray);
  methods[10].selector = @selector(copyToWithByteArray:withInt:);
  methods[11].selector = @selector(java_clone);
  methods[12].selector = @selector(isEqual:);
  methods[13].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "data_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[B", "[BII", "setData", "byteAt", "I", "copyTo", "[BI", "clone", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexPayload = { "Payload", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 14, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexPayload;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

void OrgApacheLuceneIndexPayload_init(OrgApacheLuceneIndexPayload *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexPayload *new_OrgApacheLuceneIndexPayload_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPayload, init)
}

OrgApacheLuceneIndexPayload *create_OrgApacheLuceneIndexPayload_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPayload, init)
}

void OrgApacheLuceneIndexPayload_initWithByteArray_(OrgApacheLuceneIndexPayload *self, IOSByteArray *data) {
  OrgApacheLuceneIndexPayload_initWithByteArray_withInt_withInt_(self, data, 0, ((IOSByteArray *) nil_chk(data))->size_);
}

OrgApacheLuceneIndexPayload *new_OrgApacheLuceneIndexPayload_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPayload, initWithByteArray_, data)
}

OrgApacheLuceneIndexPayload *create_OrgApacheLuceneIndexPayload_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPayload, initWithByteArray_, data)
}

void OrgApacheLuceneIndexPayload_initWithByteArray_withInt_withInt_(OrgApacheLuceneIndexPayload *self, IOSByteArray *data, jint offset, jint length) {
  NSObject_init(self);
  if (offset < 0 || offset + length > ((IOSByteArray *) nil_chk(data))->size_) {
    @throw create_JavaLangIllegalArgumentException_init();
  }
  JreStrongAssign(&self->data_, data);
  self->offset_ = offset;
  self->length_ = length;
}

OrgApacheLuceneIndexPayload *new_OrgApacheLuceneIndexPayload_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPayload, initWithByteArray_withInt_withInt_, data, offset, length)
}

OrgApacheLuceneIndexPayload *create_OrgApacheLuceneIndexPayload_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPayload, initWithByteArray_withInt_withInt_, data, offset, length)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexPayload)
