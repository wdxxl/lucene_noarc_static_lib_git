//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/packed/GrowableWriter.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/util/packed/GrowableWriter.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedGrowableWriter () {
 @public
  jlong currentMaxValue_;
  id<OrgApacheLuceneUtilPackedPackedInts_Mutable> current_;
  jboolean roundFixedSize_;
}

- (jint)getSizeWithInt:(jint)bpv;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedGrowableWriter, current_, id<OrgApacheLuceneUtilPackedPackedInts_Mutable>)

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedGrowableWriter_getSizeWithInt_(OrgApacheLuceneUtilPackedGrowableWriter *self, jint bpv);

@implementation OrgApacheLuceneUtilPackedGrowableWriter

- (instancetype)initWithInt:(jint)startBitsPerValue
                    withInt:(jint)valueCount
                withBoolean:(jboolean)roundFixedSize {
  OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(self, startBitsPerValue, valueCount, roundFixedSize);
  return self;
}

- (jint)getSizeWithInt:(jint)bpv {
  return OrgApacheLuceneUtilPackedGrowableWriter_getSizeWithInt_(self, bpv);
}

- (jlong)getWithInt:(jint)index {
  return [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) getWithInt:index];
}

- (jint)size {
  return [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) size];
}

- (jint)getBitsPerValue {
  return [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) getBitsPerValue];
}

- (id<OrgApacheLuceneUtilPackedPackedInts_Mutable>)getMutable {
  return current_;
}

- (id)getArray {
  return [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) getArray];
}

- (jboolean)hasArray {
  return [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) hasArray];
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  if (value >= currentMaxValue_) {
    jint bpv = [self getBitsPerValue];
    while (currentMaxValue_ <= value && currentMaxValue_ != JavaLangLong_MAX_VALUE) {
      bpv++;
      currentMaxValue_ *= 2;
    }
    jint valueCount = [self size];
    id<OrgApacheLuceneUtilPackedPackedInts_Mutable> next = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_(valueCount, OrgApacheLuceneUtilPackedGrowableWriter_getSizeWithInt_(self, bpv));
    for (jint i = 0; i < valueCount; i++) {
      [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(next)) setWithInt:i withLong:[((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) getWithInt:i]];
    }
    JreStrongAssign(&current_, next);
    currentMaxValue_ = OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_([((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) getBitsPerValue]);
  }
  [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) setWithInt:index withLong:value];
}

- (void)clear {
  [((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(current_)) clear];
}

- (OrgApacheLuceneUtilPackedGrowableWriter *)resizeWithInt:(jint)newSize {
  OrgApacheLuceneUtilPackedGrowableWriter *next = create_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_([self getBitsPerValue], newSize, roundFixedSize_);
  jint limit = JavaLangMath_minWithInt_withInt_([self size], newSize);
  for (jint i = 0; i < limit; i++) {
    [next setWithInt:i withLong:[self getWithInt:i]];
  }
  return next;
}

- (void)dealloc {
  RELEASE_(current_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedPackedInts_Mutable;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilPackedGrowableWriter;", 0x1, 6, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:withBoolean:);
  methods[1].selector = @selector(getSizeWithInt:);
  methods[2].selector = @selector(getWithInt:);
  methods[3].selector = @selector(size);
  methods[4].selector = @selector(getBitsPerValue);
  methods[5].selector = @selector(getMutable);
  methods[6].selector = @selector(getArray);
  methods[7].selector = @selector(hasArray);
  methods[8].selector = @selector(setWithInt:withLong:);
  methods[9].selector = @selector(clear);
  methods[10].selector = @selector(resizeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "currentMaxValue_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "current_", "LOrgApacheLuceneUtilPackedPackedInts_Mutable;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "roundFixedSize_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIZ", "getSize", "I", "get", "set", "IJ", "resize" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedGrowableWriter = { "GrowableWriter", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x1, 11, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedGrowableWriter;
}

@end

void OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(OrgApacheLuceneUtilPackedGrowableWriter *self, jint startBitsPerValue, jint valueCount, jboolean roundFixedSize) {
  NSObject_init(self);
  self->roundFixedSize_ = roundFixedSize;
  JreStrongAssign(&self->current_, OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_(valueCount, OrgApacheLuceneUtilPackedGrowableWriter_getSizeWithInt_(self, startBitsPerValue)));
  self->currentMaxValue_ = OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_([((id<OrgApacheLuceneUtilPackedPackedInts_Mutable>) nil_chk(self->current_)) getBitsPerValue]);
}

OrgApacheLuceneUtilPackedGrowableWriter *new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(jint startBitsPerValue, jint valueCount, jboolean roundFixedSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedGrowableWriter, initWithInt_withInt_withBoolean_, startBitsPerValue, valueCount, roundFixedSize)
}

OrgApacheLuceneUtilPackedGrowableWriter *create_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withBoolean_(jint startBitsPerValue, jint valueCount, jboolean roundFixedSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedGrowableWriter, initWithInt_withInt_withBoolean_, startBitsPerValue, valueCount, roundFixedSize)
}

jint OrgApacheLuceneUtilPackedGrowableWriter_getSizeWithInt_(OrgApacheLuceneUtilPackedGrowableWriter *self, jint bpv) {
  if (self->roundFixedSize_) {
    return OrgApacheLuceneUtilPackedPackedInts_getNextFixedSizeWithInt_(bpv);
  }
  else {
    return bpv;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedGrowableWriter)
