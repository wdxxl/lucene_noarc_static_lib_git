//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/OpenBitSetIterator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/OpenBitSet.h"
#include "org/apache/lucene/util/OpenBitSetIterator.h"

@interface OrgApacheLuceneUtilOpenBitSetIterator () {
 @public
  jint i_;
  jlong word_;
  jint wordShift_;
  jint indexArray_;
  jint curDocId_;
}

- (void)shift;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilOpenBitSetIterator_shift(OrgApacheLuceneUtilOpenBitSetIterator *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilOpenBitSetIterator)

IOSIntArray *OrgApacheLuceneUtilOpenBitSetIterator_bitlist;

@implementation OrgApacheLuceneUtilOpenBitSetIterator

- (instancetype)initWithOrgApacheLuceneUtilOpenBitSet:(OrgApacheLuceneUtilOpenBitSet *)obs {
  OrgApacheLuceneUtilOpenBitSetIterator_initWithOrgApacheLuceneUtilOpenBitSet_(self, obs);
  return self;
}

- (instancetype)initWithLongArray:(IOSLongArray *)bits
                          withInt:(jint)numWords {
  OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(self, bits, numWords);
  return self;
}

- (void)shift {
  OrgApacheLuceneUtilOpenBitSetIterator_shift(self);
}

- (jint)nextDoc {
  if (indexArray_ == 0) {
    if (word_ != 0) {
      JreURShiftAssignLong(&word_, 8);
      wordShift_ += 8;
    }
    while (word_ == 0) {
      if (++i_ >= words_) {
        return curDocId_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      }
      word_ = IOSLongArray_Get(nil_chk(arr_), i_);
      wordShift_ = -1;
    }
    OrgApacheLuceneUtilOpenBitSetIterator_shift(self);
  }
  jint bitIndex = (indexArray_ & (jint) 0x0f) + wordShift_;
  JreURShiftAssignInt(&indexArray_, 4);
  return curDocId_ = (JreLShift32(i_, 6)) + bitIndex;
}

- (jint)advanceWithInt:(jint)target {
  indexArray_ = 0;
  i_ = JreRShift32(target, 6);
  if (i_ >= words_) {
    word_ = 0;
    return curDocId_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  wordShift_ = target & (jint) 0x3f;
  word_ = JreURShift64(IOSLongArray_Get(nil_chk(arr_), i_), wordShift_);
  if (word_ != 0) {
    wordShift_--;
  }
  else {
    while (word_ == 0) {
      if (++i_ >= words_) {
        return curDocId_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      }
      word_ = IOSLongArray_Get(arr_, i_);
    }
    wordShift_ = -1;
  }
  OrgApacheLuceneUtilOpenBitSetIterator_shift(self);
  jint bitIndex = (indexArray_ & (jint) 0x0f) + wordShift_;
  JreURShiftAssignInt(&indexArray_, 4);
  return curDocId_ = (JreLShift32(i_, 6)) + bitIndex;
}

- (jint)docID {
  return curDocId_;
}

- (void)dealloc {
  RELEASE_(arr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilOpenBitSet:);
  methods[1].selector = @selector(initWithLongArray:withInt:);
  methods[2].selector = @selector(shift);
  methods[3].selector = @selector(nextDoc);
  methods[4].selector = @selector(advanceWithInt:);
  methods[5].selector = @selector(docID);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bitlist", "[I", .constantValue.asLong = 0, 0x1c, -1, 4, -1, -1 },
    { "arr_", "[J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "words_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "i_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "word_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "wordShift_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "indexArray_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curDocId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilOpenBitSet;", "[JI", "advance", "I", &OrgApacheLuceneUtilOpenBitSetIterator_bitlist };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilOpenBitSetIterator = { "OpenBitSetIterator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1, 6, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilOpenBitSetIterator;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilOpenBitSetIterator class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilOpenBitSetIterator_bitlist, [IOSIntArray newArrayWithInts:(jint[]){ (jint) 0x0, (jint) 0x1, (jint) 0x2, (jint) 0x21, (jint) 0x3, (jint) 0x31, (jint) 0x32, (jint) 0x321, (jint) 0x4, (jint) 0x41, (jint) 0x42, (jint) 0x421, (jint) 0x43, (jint) 0x431, (jint) 0x432, (jint) 0x4321, (jint) 0x5, (jint) 0x51, (jint) 0x52, (jint) 0x521, (jint) 0x53, (jint) 0x531, (jint) 0x532, (jint) 0x5321, (jint) 0x54, (jint) 0x541, (jint) 0x542, (jint) 0x5421, (jint) 0x543, (jint) 0x5431, (jint) 0x5432, (jint) 0x54321, (jint) 0x6, (jint) 0x61, (jint) 0x62, (jint) 0x621, (jint) 0x63, (jint) 0x631, (jint) 0x632, (jint) 0x6321, (jint) 0x64, (jint) 0x641, (jint) 0x642, (jint) 0x6421, (jint) 0x643, (jint) 0x6431, (jint) 0x6432, (jint) 0x64321, (jint) 0x65, (jint) 0x651, (jint) 0x652, (jint) 0x6521, (jint) 0x653, (jint) 0x6531, (jint) 0x6532, (jint) 0x65321, (jint) 0x654, (jint) 0x6541, (jint) 0x6542, (jint) 0x65421, (jint) 0x6543, (jint) 0x65431, (jint) 0x65432, (jint) 0x654321, (jint) 0x7, (jint) 0x71, (jint) 0x72, (jint) 0x721, (jint) 0x73, (jint) 0x731, (jint) 0x732, (jint) 0x7321, (jint) 0x74, (jint) 0x741, (jint) 0x742, (jint) 0x7421, (jint) 0x743, (jint) 0x7431, (jint) 0x7432, (jint) 0x74321, (jint) 0x75, (jint) 0x751, (jint) 0x752, (jint) 0x7521, (jint) 0x753, (jint) 0x7531, (jint) 0x7532, (jint) 0x75321, (jint) 0x754, (jint) 0x7541, (jint) 0x7542, (jint) 0x75421, (jint) 0x7543, (jint) 0x75431, (jint) 0x75432, (jint) 0x754321, (jint) 0x76, (jint) 0x761, (jint) 0x762, (jint) 0x7621, (jint) 0x763, (jint) 0x7631, (jint) 0x7632, (jint) 0x76321, (jint) 0x764, (jint) 0x7641, (jint) 0x7642, (jint) 0x76421, (jint) 0x7643, (jint) 0x76431, (jint) 0x76432, (jint) 0x764321, (jint) 0x765, (jint) 0x7651, (jint) 0x7652, (jint) 0x76521, (jint) 0x7653, (jint) 0x76531, (jint) 0x76532, (jint) 0x765321, (jint) 0x7654, (jint) 0x76541, (jint) 0x76542, (jint) 0x765421, (jint) 0x76543, (jint) 0x765431, (jint) 0x765432, (jint) 0x7654321, (jint) 0x8, (jint) 0x81, (jint) 0x82, (jint) 0x821, (jint) 0x83, (jint) 0x831, (jint) 0x832, (jint) 0x8321, (jint) 0x84, (jint) 0x841, (jint) 0x842, (jint) 0x8421, (jint) 0x843, (jint) 0x8431, (jint) 0x8432, (jint) 0x84321, (jint) 0x85, (jint) 0x851, (jint) 0x852, (jint) 0x8521, (jint) 0x853, (jint) 0x8531, (jint) 0x8532, (jint) 0x85321, (jint) 0x854, (jint) 0x8541, (jint) 0x8542, (jint) 0x85421, (jint) 0x8543, (jint) 0x85431, (jint) 0x85432, (jint) 0x854321, (jint) 0x86, (jint) 0x861, (jint) 0x862, (jint) 0x8621, (jint) 0x863, (jint) 0x8631, (jint) 0x8632, (jint) 0x86321, (jint) 0x864, (jint) 0x8641, (jint) 0x8642, (jint) 0x86421, (jint) 0x8643, (jint) 0x86431, (jint) 0x86432, (jint) 0x864321, (jint) 0x865, (jint) 0x8651, (jint) 0x8652, (jint) 0x86521, (jint) 0x8653, (jint) 0x86531, (jint) 0x86532, (jint) 0x865321, (jint) 0x8654, (jint) 0x86541, (jint) 0x86542, (jint) 0x865421, (jint) 0x86543, (jint) 0x865431, (jint) 0x865432, (jint) 0x8654321, (jint) 0x87, (jint) 0x871, (jint) 0x872, (jint) 0x8721, (jint) 0x873, (jint) 0x8731, (jint) 0x8732, (jint) 0x87321, (jint) 0x874, (jint) 0x8741, (jint) 0x8742, (jint) 0x87421, (jint) 0x8743, (jint) 0x87431, (jint) 0x87432, (jint) 0x874321, (jint) 0x875, (jint) 0x8751, (jint) 0x8752, (jint) 0x87521, (jint) 0x8753, (jint) 0x87531, (jint) 0x87532, (jint) 0x875321, (jint) 0x8754, (jint) 0x87541, (jint) 0x87542, (jint) 0x875421, (jint) 0x87543, (jint) 0x875431, (jint) 0x875432, (jint) 0x8754321, (jint) 0x876, (jint) 0x8761, (jint) 0x8762, (jint) 0x87621, (jint) 0x8763, (jint) 0x87631, (jint) 0x87632, (jint) 0x876321, (jint) 0x8764, (jint) 0x87641, (jint) 0x87642, (jint) 0x876421, (jint) 0x87643, (jint) 0x876431, (jint) 0x876432, (jint) 0x8764321, (jint) 0x8765, (jint) 0x87651, (jint) 0x87652, (jint) 0x876521, (jint) 0x87653, (jint) 0x876531, (jint) 0x876532, (jint) 0x8765321, (jint) 0x87654, (jint) 0x876541, (jint) 0x876542, (jint) 0x8765421, (jint) 0x876543, (jint) 0x8765431, (jint) 0x8765432, (jint) 0x87654321 } count:256]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilOpenBitSetIterator)
  }
}

@end

void OrgApacheLuceneUtilOpenBitSetIterator_initWithOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSetIterator *self, OrgApacheLuceneUtilOpenBitSet *obs) {
  OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(self, [((OrgApacheLuceneUtilOpenBitSet *) nil_chk(obs)) getBits], [obs getNumWords]);
}

OrgApacheLuceneUtilOpenBitSetIterator *new_OrgApacheLuceneUtilOpenBitSetIterator_initWithOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *obs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilOpenBitSetIterator, initWithOrgApacheLuceneUtilOpenBitSet_, obs)
}

OrgApacheLuceneUtilOpenBitSetIterator *create_OrgApacheLuceneUtilOpenBitSetIterator_initWithOrgApacheLuceneUtilOpenBitSet_(OrgApacheLuceneUtilOpenBitSet *obs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilOpenBitSetIterator, initWithOrgApacheLuceneUtilOpenBitSet_, obs)
}

void OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(OrgApacheLuceneUtilOpenBitSetIterator *self, IOSLongArray *bits, jint numWords) {
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  self->i_ = -1;
  self->curDocId_ = -1;
  JreStrongAssign(&self->arr_, bits);
  self->words_ = numWords;
}

OrgApacheLuceneUtilOpenBitSetIterator *new_OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(IOSLongArray *bits, jint numWords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilOpenBitSetIterator, initWithLongArray_withInt_, bits, numWords)
}

OrgApacheLuceneUtilOpenBitSetIterator *create_OrgApacheLuceneUtilOpenBitSetIterator_initWithLongArray_withInt_(IOSLongArray *bits, jint numWords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilOpenBitSetIterator, initWithLongArray_withInt_, bits, numWords)
}

void OrgApacheLuceneUtilOpenBitSetIterator_shift(OrgApacheLuceneUtilOpenBitSetIterator *self) {
  if ((jint) self->word_ == 0) {
    self->wordShift_ += 32;
    self->word_ = JreURShift64(self->word_, 32);
  }
  if ((self->word_ & (jint) 0x0000FFFF) == 0) {
    self->wordShift_ += 16;
    JreURShiftAssignLong(&self->word_, 16);
  }
  if ((self->word_ & (jint) 0x000000FF) == 0) {
    self->wordShift_ += 8;
    JreURShiftAssignLong(&self->word_, 8);
  }
  self->indexArray_ = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilOpenBitSetIterator_bitlist), (jint) self->word_ & (jint) 0xff);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilOpenBitSetIterator)
