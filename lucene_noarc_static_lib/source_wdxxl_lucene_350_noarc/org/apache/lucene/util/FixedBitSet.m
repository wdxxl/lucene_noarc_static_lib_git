//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/FixedBitSet.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/OpenBitSetIterator.h"

@interface OrgApacheLuceneUtilFixedBitSet () {
 @public
  IOSLongArray *bits_;
  jint numBits_;
}

- (void)or__WithLongArray:(IOSLongArray *)otherArr
                  withInt:(jint)otherLen;

- (void)and__WithLongArray:(IOSLongArray *)otherArr
                   withInt:(jint)otherLen;

- (void)andNotWithLongArray:(IOSLongArray *)otherArr
                    withInt:(jint)otherLen;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFixedBitSet, bits_, IOSLongArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilFixedBitSet_or__WithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen);

__attribute__((unused)) static void OrgApacheLuceneUtilFixedBitSet_and__WithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen);

__attribute__((unused)) static void OrgApacheLuceneUtilFixedBitSet_andNotWithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen);

@implementation OrgApacheLuceneUtilFixedBitSet

+ (jint)bits2wordsWithInt:(jint)numBits {
  return OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(numBits);
}

- (instancetype)initWithInt:(jint)numBits {
  OrgApacheLuceneUtilFixedBitSet_initWithInt_(self, numBits);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other {
  OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(self, other);
  return self;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  return create_OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(bits_, ((IOSLongArray *) nil_chk(bits_))->size_);
}

- (jint)length {
  return numBits_;
}

- (jboolean)isCacheable {
  return true;
}

- (IOSLongArray *)getBits {
  return bits_;
}

- (jint)cardinality {
  return (jint) OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(bits_, 0, ((IOSLongArray *) nil_chk(bits_))->size_);
}

- (jboolean)getWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:92 condition failed: assert index >= 0 && index < numBits;"));
  jint i = JreRShift32(index, 6);
  jint bit = index & (jint) 0x3f;
  jlong bitmask = JreLShift64(1LL, bit);
  return (IOSLongArray_Get(nil_chk(bits_), i) & bitmask) != 0;
}

- (void)setWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:102 condition failed: assert index >= 0 && index < numBits;"));
  jint wordNum = JreRShift32(index, 6);
  jint bit = index & (jint) 0x3f;
  jlong bitmask = JreLShift64(1LL, bit);
  *IOSLongArray_GetRef(nil_chk(bits_), wordNum) |= bitmask;
}

- (jboolean)getAndSetWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:110 condition failed: assert index >= 0 && index < numBits;"));
  jint wordNum = JreRShift32(index, 6);
  jint bit = index & (jint) 0x3f;
  jlong bitmask = JreLShift64(1LL, bit);
  jboolean val = (IOSLongArray_Get(nil_chk(bits_), wordNum) & bitmask) != 0;
  *IOSLongArray_GetRef(bits_, wordNum) |= bitmask;
  return val;
}

- (void)clearWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:120 condition failed: assert index >= 0 && index < numBits;"));
  jint wordNum = JreRShift32(index, 6);
  jint bit = index & (jint) 0x03f;
  jlong bitmask = JreLShift64(1LL, bit);
  *IOSLongArray_GetRef(nil_chk(bits_), wordNum) &= ~bitmask;
}

- (jboolean)getAndClearWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:128 condition failed: assert index >= 0 && index < numBits;"));
  jint wordNum = JreRShift32(index, 6);
  jint bit = index & (jint) 0x3f;
  jlong bitmask = JreLShift64(1LL, bit);
  jboolean val = (IOSLongArray_Get(nil_chk(bits_), wordNum) & bitmask) != 0;
  *IOSLongArray_GetRef(bits_, wordNum) &= ~bitmask;
  return val;
}

- (jint)nextSetBitWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:141 condition failed: assert index >= 0 && index < numBits;"));
  jint i = JreRShift32(index, 6);
  jint subIndex = index & (jint) 0x3f;
  jlong word = JreRShift64(IOSLongArray_Get(nil_chk(bits_), i), subIndex);
  if (word != 0) {
    return (JreLShift32(i, 6)) + subIndex + OrgApacheLuceneUtilBitUtil_ntzWithLong_(word);
  }
  while (++i < bits_->size_) {
    word = IOSLongArray_Get(bits_, i);
    if (word != 0) {
      return (JreLShift32(i, 6)) + OrgApacheLuceneUtilBitUtil_ntzWithLong_(word);
    }
  }
  return -1;
}

- (jint)prevSetBitWithInt:(jint)index {
  JreAssert((index >= 0 && index < numBits_), (JreStrcat("$I$I", @"index=", index, @" numBits=", numBits_)));
  jint i = JreRShift32(index, 6);
  jint subIndex = index & (jint) 0x3f;
  jlong word = (JreLShift64(IOSLongArray_Get(nil_chk(bits_), i), (63 - subIndex)));
  if (word != 0) {
    return (JreLShift32(i, 6)) + subIndex - JavaLangLong_numberOfLeadingZerosWithLong_(word);
  }
  while (--i >= 0) {
    word = IOSLongArray_Get(bits_, i);
    if (word != 0) {
      return (JreLShift32(i, 6)) + 63 - JavaLangLong_numberOfLeadingZerosWithLong_(word);
    }
  }
  return -1;
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  if ([iter isKindOfClass:[OrgApacheLuceneUtilOpenBitSetIterator class]] && [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) docID] == -1) {
    OrgApacheLuceneUtilOpenBitSetIterator *obs = (OrgApacheLuceneUtilOpenBitSetIterator *) cast_chk(iter, [OrgApacheLuceneUtilOpenBitSetIterator class]);
    OrgApacheLuceneUtilFixedBitSet_or__WithLongArray_withInt_(self, ((OrgApacheLuceneUtilOpenBitSetIterator *) nil_chk(obs))->arr_, obs->words_);
    [obs advanceWithInt:numBits_];
  }
  else {
    jint doc;
    while ((doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) nextDoc]) < numBits_) {
      [self setWithInt:doc];
    }
  }
}

- (void)or__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other {
  OrgApacheLuceneUtilFixedBitSet_or__WithLongArray_withInt_(self, ((OrgApacheLuceneUtilFixedBitSet *) nil_chk(other))->bits_, ((IOSLongArray *) nil_chk(other->bits_))->size_);
}

- (void)or__WithLongArray:(IOSLongArray *)otherArr
                  withInt:(jint)otherLen {
  OrgApacheLuceneUtilFixedBitSet_or__WithLongArray_withInt_(self, otherArr, otherLen);
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  if ([iter isKindOfClass:[OrgApacheLuceneUtilOpenBitSetIterator class]] && [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) docID] == -1) {
    OrgApacheLuceneUtilOpenBitSetIterator *obs = (OrgApacheLuceneUtilOpenBitSetIterator *) cast_chk(iter, [OrgApacheLuceneUtilOpenBitSetIterator class]);
    OrgApacheLuceneUtilFixedBitSet_and__WithLongArray_withInt_(self, ((OrgApacheLuceneUtilOpenBitSetIterator *) nil_chk(obs))->arr_, obs->words_);
    [obs advanceWithInt:numBits_];
  }
  else {
    if (numBits_ == 0) return;
    jint disiDoc;
    jint bitSetDoc = [self nextSetBitWithInt:0];
    while (bitSetDoc != -1 && (disiDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) advanceWithInt:bitSetDoc]) < numBits_) {
      [self clearWithInt:bitSetDoc withInt:disiDoc];
      disiDoc++;
      bitSetDoc = (disiDoc < numBits_) ? [self nextSetBitWithInt:disiDoc] : -1;
    }
    if (bitSetDoc != -1) {
      [self clearWithInt:bitSetDoc withInt:numBits_];
    }
  }
}

- (void)and__WithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other {
  OrgApacheLuceneUtilFixedBitSet_and__WithLongArray_withInt_(self, ((OrgApacheLuceneUtilFixedBitSet *) nil_chk(other))->bits_, ((IOSLongArray *) nil_chk(other->bits_))->size_);
}

- (void)and__WithLongArray:(IOSLongArray *)otherArr
                   withInt:(jint)otherLen {
  OrgApacheLuceneUtilFixedBitSet_and__WithLongArray_withInt_(self, otherArr, otherLen);
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  if ([iter isKindOfClass:[OrgApacheLuceneUtilOpenBitSetIterator class]] && [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) docID] == -1) {
    OrgApacheLuceneUtilOpenBitSetIterator *obs = (OrgApacheLuceneUtilOpenBitSetIterator *) cast_chk(iter, [OrgApacheLuceneUtilOpenBitSetIterator class]);
    OrgApacheLuceneUtilFixedBitSet_andNotWithLongArray_withInt_(self, ((OrgApacheLuceneUtilOpenBitSetIterator *) nil_chk(obs))->arr_, obs->words_);
    [obs advanceWithInt:numBits_];
  }
  else {
    jint doc;
    while ((doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) nextDoc]) < numBits_) {
      [self clearWithInt:doc];
    }
  }
}

- (void)andNotWithOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)other {
  OrgApacheLuceneUtilFixedBitSet_andNotWithLongArray_withInt_(self, ((OrgApacheLuceneUtilFixedBitSet *) nil_chk(other))->bits_, ((IOSLongArray *) nil_chk(other->bits_))->size_);
}

- (void)andNotWithLongArray:(IOSLongArray *)otherArr
                    withInt:(jint)otherLen {
  OrgApacheLuceneUtilFixedBitSet_andNotWithLongArray_withInt_(self, otherArr, otherLen);
}

- (void)flipWithInt:(jint)startIndex
            withInt:(jint)endIndex {
  JreAssert((startIndex >= 0 && startIndex < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:292 condition failed: assert startIndex >= 0 && startIndex < numBits;"));
  JreAssert((endIndex >= 0 && endIndex <= numBits_), (@"org/apache/lucene/util/FixedBitSet.java:293 condition failed: assert endIndex >= 0 && endIndex <= numBits;"));
  if (endIndex <= startIndex) {
    return;
  }
  jint startWord = JreRShift32(startIndex, 6);
  jint endWord = JreRShift32((endIndex - 1), 6);
  jlong startmask = JreLShift64(-1LL, startIndex);
  jlong endmask = JreURShift64(-1LL, -endIndex);
  if (startWord == endWord) {
    *IOSLongArray_GetRef(nil_chk(bits_), startWord) ^= (startmask & endmask);
    return;
  }
  *IOSLongArray_GetRef(nil_chk(bits_), startWord) ^= startmask;
  for (jint i = startWord + 1; i < endWord; i++) {
    *IOSLongArray_GetRef(bits_, i) = ~IOSLongArray_Get(bits_, i);
  }
  *IOSLongArray_GetRef(bits_, endWord) ^= endmask;
}

- (void)setWithInt:(jint)startIndex
           withInt:(jint)endIndex {
  JreAssert((startIndex >= 0 && startIndex < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:331 condition failed: assert startIndex >= 0 && startIndex < numBits;"));
  JreAssert((endIndex >= 0 && endIndex <= numBits_), (@"org/apache/lucene/util/FixedBitSet.java:332 condition failed: assert endIndex >= 0 && endIndex <= numBits;"));
  if (endIndex <= startIndex) {
    return;
  }
  jint startWord = JreRShift32(startIndex, 6);
  jint endWord = JreRShift32((endIndex - 1), 6);
  jlong startmask = JreLShift64(-1LL, startIndex);
  jlong endmask = JreURShift64(-1LL, -endIndex);
  if (startWord == endWord) {
    *IOSLongArray_GetRef(nil_chk(bits_), startWord) |= (startmask & endmask);
    return;
  }
  *IOSLongArray_GetRef(nil_chk(bits_), startWord) |= startmask;
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(bits_, startWord + 1, endWord, -1LL);
  *IOSLongArray_GetRef(bits_, endWord) |= endmask;
}

- (void)clearWithInt:(jint)startIndex
             withInt:(jint)endIndex {
  JreAssert((startIndex >= 0 && startIndex < numBits_), (@"org/apache/lucene/util/FixedBitSet.java:359 condition failed: assert startIndex >= 0 && startIndex < numBits;"));
  JreAssert((endIndex >= 0 && endIndex <= numBits_), (@"org/apache/lucene/util/FixedBitSet.java:360 condition failed: assert endIndex >= 0 && endIndex <= numBits;"));
  if (endIndex <= startIndex) {
    return;
  }
  jint startWord = JreRShift32(startIndex, 6);
  jint endWord = JreRShift32((endIndex - 1), 6);
  jlong startmask = JreLShift64(-1LL, startIndex);
  jlong endmask = JreURShift64(-1LL, -endIndex);
  startmask = ~startmask;
  endmask = ~endmask;
  if (startWord == endWord) {
    *IOSLongArray_GetRef(nil_chk(bits_), startWord) &= (startmask | endmask);
    return;
  }
  *IOSLongArray_GetRef(nil_chk(bits_), startWord) &= startmask;
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(bits_, startWord + 1, endWord, 0LL);
  *IOSLongArray_GetRef(bits_, endWord) &= endmask;
}

- (id)java_clone {
  return create_OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(self);
}

- (jboolean)isEqual:(id)o {
  if (self == o) {
    return true;
  }
  if (!([o isKindOfClass:[OrgApacheLuceneUtilFixedBitSet class]])) {
    return false;
  }
  OrgApacheLuceneUtilFixedBitSet *other = (OrgApacheLuceneUtilFixedBitSet *) cast_chk(o, [OrgApacheLuceneUtilFixedBitSet class]);
  if (numBits_ != [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(other)) length]) {
    return false;
  }
  return JavaUtilArrays_equalsWithLongArray_withLongArray_(bits_, other->bits_);
}

- (NSUInteger)hash {
  jlong h = 0;
  for (jint i = ((IOSLongArray *) nil_chk(bits_))->size_; --i >= 0; ) {
    h ^= IOSLongArray_Get(bits_, i);
    h = (JreLShift64(h, 1)) | (JreURShift64(h, 63));
  }
  return (jint) ((JreRShift64(h, 32)) ^ h) + (jint) 0x98761234;
}

- (void)dealloc {
  RELEASE_(bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSetIterator;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 12, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 10, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 11, 12, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 11, 12, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 15, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 17, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 21, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(bits2wordsWithInt:);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilFixedBitSet:);
  methods[3].selector = @selector(iterator);
  methods[4].selector = @selector(length);
  methods[5].selector = @selector(isCacheable);
  methods[6].selector = @selector(getBits);
  methods[7].selector = @selector(cardinality);
  methods[8].selector = @selector(getWithInt:);
  methods[9].selector = @selector(setWithInt:);
  methods[10].selector = @selector(getAndSetWithInt:);
  methods[11].selector = @selector(clearWithInt:);
  methods[12].selector = @selector(getAndClearWithInt:);
  methods[13].selector = @selector(nextSetBitWithInt:);
  methods[14].selector = @selector(prevSetBitWithInt:);
  methods[15].selector = @selector(or__WithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[16].selector = @selector(or__WithOrgApacheLuceneUtilFixedBitSet:);
  methods[17].selector = @selector(or__WithLongArray:withInt:);
  methods[18].selector = @selector(and__WithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[19].selector = @selector(and__WithOrgApacheLuceneUtilFixedBitSet:);
  methods[20].selector = @selector(and__WithLongArray:withInt:);
  methods[21].selector = @selector(andNotWithOrgApacheLuceneSearchDocIdSetIterator:);
  methods[22].selector = @selector(andNotWithOrgApacheLuceneUtilFixedBitSet:);
  methods[23].selector = @selector(andNotWithLongArray:withInt:);
  methods[24].selector = @selector(flipWithInt:withInt:);
  methods[25].selector = @selector(setWithInt:withInt:);
  methods[26].selector = @selector(clearWithInt:withInt:);
  methods[27].selector = @selector(java_clone);
  methods[28].selector = @selector(isEqual:);
  methods[29].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bits_", "[J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "numBits_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "bits2words", "I", "LOrgApacheLuceneUtilFixedBitSet;", "get", "set", "getAndSet", "clear", "getAndClear", "nextSetBit", "prevSetBit", "or", "LOrgApacheLuceneSearchDocIdSetIterator;", "LJavaIoIOException;", "[JI", "and", "andNot", "flip", "II", "clone", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFixedBitSet = { "FixedBitSet", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 30, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilFixedBitSet;
}

@end

jint OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(jint numBits) {
  OrgApacheLuceneUtilFixedBitSet_initialize();
  jint numLong = JreURShift32(numBits, 6);
  if ((numBits & 63) != 0) {
    numLong++;
  }
  return numLong;
}

void OrgApacheLuceneUtilFixedBitSet_initWithInt_(OrgApacheLuceneUtilFixedBitSet *self, jint numBits) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  self->numBits_ = numBits;
  JreStrongAssignAndConsume(&self->bits_, [IOSLongArray newArrayWithLength:OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(numBits)]);
}

OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFixedBitSet, initWithInt_, numBits)
}

OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithInt_(jint numBits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFixedBitSet, initWithInt_, numBits)
}

void OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *self, OrgApacheLuceneUtilFixedBitSet *other) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  JreStrongAssignAndConsume(&self->bits_, [IOSLongArray newArrayWithLength:((IOSLongArray *) nil_chk(((OrgApacheLuceneUtilFixedBitSet *) nil_chk(other))->bits_))->size_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(other->bits_, 0, self->bits_, 0, self->bits_->size_);
  self->numBits_ = other->numBits_;
}

OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *other) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFixedBitSet, initWithOrgApacheLuceneUtilFixedBitSet_, other)
}

OrgApacheLuceneUtilFixedBitSet *create_OrgApacheLuceneUtilFixedBitSet_initWithOrgApacheLuceneUtilFixedBitSet_(OrgApacheLuceneUtilFixedBitSet *other) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFixedBitSet, initWithOrgApacheLuceneUtilFixedBitSet_, other)
}

void OrgApacheLuceneUtilFixedBitSet_or__WithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen) {
  IOSLongArray *thisArr = self->bits_;
  jint pos = JavaLangMath_minWithInt_withInt_(((IOSLongArray *) nil_chk(thisArr))->size_, otherLen);
  while (--pos >= 0) {
    *IOSLongArray_GetRef(thisArr, pos) |= IOSLongArray_Get(nil_chk(otherArr), pos);
  }
}

void OrgApacheLuceneUtilFixedBitSet_and__WithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen) {
  IOSLongArray *thisArr = self->bits_;
  jint pos = JavaLangMath_minWithInt_withInt_(((IOSLongArray *) nil_chk(thisArr))->size_, otherLen);
  while (--pos >= 0) {
    *IOSLongArray_GetRef(thisArr, pos) &= IOSLongArray_Get(nil_chk(otherArr), pos);
  }
  if (thisArr->size_ > otherLen) {
    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(thisArr, otherLen, thisArr->size_, 0LL);
  }
}

void OrgApacheLuceneUtilFixedBitSet_andNotWithLongArray_withInt_(OrgApacheLuceneUtilFixedBitSet *self, IOSLongArray *otherArr, jint otherLen) {
  IOSLongArray *thisArr = self->bits_;
  jint pos = JavaLangMath_minWithInt_withInt_(((IOSLongArray *) nil_chk(thisArr))->size_, otherLen);
  while (--pos >= 0) {
    *IOSLongArray_GetRef(thisArr, pos) &= ~IOSLongArray_Get(nil_chk(otherArr), pos);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFixedBitSet)
