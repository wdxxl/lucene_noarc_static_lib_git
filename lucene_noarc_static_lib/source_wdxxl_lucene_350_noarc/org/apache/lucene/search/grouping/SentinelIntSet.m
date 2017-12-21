//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/grouping/SentinelIntSet.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/search/grouping/SentinelIntSet.h"
#include "org/apache/lucene/util/BitUtil.h"

@implementation OrgApacheLuceneSearchGroupingSentinelIntSet

- (instancetype)initWithInt:(jint)size
                    withInt:(jint)emptyVal {
  OrgApacheLuceneSearchGroupingSentinelIntSet_initWithInt_withInt_(self, size, emptyVal);
  return self;
}

- (void)clear {
  JavaUtilArrays_fillWithIntArray_withInt_(keys_, emptyVal_);
  count_ = 0;
}

- (jint)hash__WithInt:(jint)key {
  return key;
}

- (jint)size {
  return count_;
}

- (jint)getSlotWithInt:(jint)key {
  JreAssert((key != emptyVal_), (@"org/apache/lucene/search/grouping/SentinelIntSet.java:55 condition failed: assert key != emptyVal;"));
  jint h = [self hash__WithInt:key];
  jint s = h & (((IOSIntArray *) nil_chk(keys_))->size_ - 1);
  if (IOSIntArray_Get(keys_, s) == key || IOSIntArray_Get(keys_, s) == emptyVal_) return s;
  jint increment = (JreRShift32(h, 7)) | 1;
  do {
    s = (s + increment) & (keys_->size_ - 1);
  }
  while (IOSIntArray_Get(keys_, s) != key && IOSIntArray_Get(keys_, s) != emptyVal_);
  return s;
}

- (jint)findWithInt:(jint)key {
  JreAssert((key != emptyVal_), (@"org/apache/lucene/search/grouping/SentinelIntSet.java:69 condition failed: assert key != emptyVal;"));
  jint h = [self hash__WithInt:key];
  jint s = h & (((IOSIntArray *) nil_chk(keys_))->size_ - 1);
  if (IOSIntArray_Get(keys_, s) == key) return s;
  if (IOSIntArray_Get(keys_, s) == emptyVal_) return -s - 1;
  jint increment = (JreRShift32(h, 7)) | 1;
  for (; ; ) {
    s = (s + increment) & (keys_->size_ - 1);
    if (IOSIntArray_Get(keys_, s) == key) return s;
    if (IOSIntArray_Get(keys_, s) == emptyVal_) return -s - 1;
  }
}

- (jboolean)existsWithInt:(jint)key {
  return [self findWithInt:key] >= 0;
}

- (jint)putWithInt:(jint)key {
  jint s = [self findWithInt:key];
  if (s < 0) {
    if (count_ >= rehashCount_) {
      [self rehash];
      s = [self getSlotWithInt:key];
    }
    else {
      s = -s - 1;
    }
    count_++;
    *IOSIntArray_GetRef(nil_chk(keys_), s) = key;
  }
  return s;
}

- (void)rehash {
  jint newSize = JreLShift32(((IOSIntArray *) nil_chk(keys_))->size_, 1);
  IOSIntArray *oldKeys = keys_;
  JreStrongAssignAndConsume(&keys_, [IOSIntArray newArrayWithLength:newSize]);
  if (emptyVal_ != 0) JavaUtilArrays_fillWithIntArray_withInt_(keys_, emptyVal_);
  for (jint i = 0; i < oldKeys->size_; i++) {
    jint key = IOSIntArray_Get(oldKeys, i);
    if (key == emptyVal_) continue;
    jint newSlot = [self getSlotWithInt:key];
    *IOSIntArray_GetRef(nil_chk(keys_), newSlot) = key;
  }
  rehashCount_ = newSize - (JreRShift32(newSize, 2));
}

- (void)dealloc {
  RELEASE_(keys_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(clear);
  methods[2].selector = @selector(hash__WithInt:);
  methods[3].selector = @selector(size);
  methods[4].selector = @selector(getSlotWithInt:);
  methods[5].selector = @selector(findWithInt:);
  methods[6].selector = @selector(existsWithInt:);
  methods[7].selector = @selector(putWithInt:);
  methods[8].selector = @selector(rehash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "keys_", "[I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "emptyVal_", "I", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "rehashCount_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "hash", "I", "getSlot", "find", "exists", "put" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingSentinelIntSet = { "SentinelIntSet", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x0, 9, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGroupingSentinelIntSet;
}

@end

void OrgApacheLuceneSearchGroupingSentinelIntSet_initWithInt_withInt_(OrgApacheLuceneSearchGroupingSentinelIntSet *self, jint size, jint emptyVal) {
  NSObject_init(self);
  self->emptyVal_ = emptyVal;
  jint tsize = JavaLangMath_maxWithInt_withInt_(OrgApacheLuceneUtilBitUtil_nextHighestPowerOfTwoWithInt_(size), 1);
  self->rehashCount_ = tsize - (JreRShift32(tsize, 2));
  if (size >= self->rehashCount_) {
    JreLShiftAssignInt(&tsize, 1);
    self->rehashCount_ = tsize - (JreRShift32(tsize, 2));
  }
  JreStrongAssignAndConsume(&self->keys_, [IOSIntArray newArrayWithLength:tsize]);
  if (emptyVal != 0) [self clear];
}

OrgApacheLuceneSearchGroupingSentinelIntSet *new_OrgApacheLuceneSearchGroupingSentinelIntSet_initWithInt_withInt_(jint size, jint emptyVal) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingSentinelIntSet, initWithInt_withInt_, size, emptyVal)
}

OrgApacheLuceneSearchGroupingSentinelIntSet *create_OrgApacheLuceneSearchGroupingSentinelIntSet_initWithInt_withInt_(jint size, jint emptyVal) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingSentinelIntSet, initWithInt_withInt_, size, emptyVal)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingSentinelIntSet)
