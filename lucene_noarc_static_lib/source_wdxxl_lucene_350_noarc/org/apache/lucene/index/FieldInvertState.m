//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/FieldInvertState.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/util/AttributeSource.h"

@implementation OrgApacheLuceneIndexFieldInvertState

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFieldInvertState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)position
                    withInt:(jint)length
                    withInt:(jint)numOverlap
                    withInt:(jint)offset
                  withFloat:(jfloat)boost {
  OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(self, position, length, numOverlap, offset, boost);
  return self;
}

- (void)resetWithFloat:(jfloat)docBoost {
  position_ = 0;
  length_ = 0;
  numOverlap_ = 0;
  offset_ = 0;
  maxTermFrequency_ = 0;
  uniqueTermCount_ = 0;
  boost_ = docBoost;
  JreStrongAssign(&attributeSource_, nil);
}

- (jint)getPosition {
  return position_;
}

- (jint)getLength {
  return length_;
}

- (void)setLengthWithInt:(jint)length {
  self->length_ = length;
}

- (jint)getNumOverlap {
  return numOverlap_;
}

- (void)setNumOverlapWithInt:(jint)numOverlap {
  self->numOverlap_ = numOverlap;
}

- (jint)getOffset {
  return offset_;
}

- (jfloat)getBoost {
  return boost_;
}

- (void)setBoostWithFloat:(jfloat)boost {
  self->boost_ = boost;
}

- (jint)getMaxTermFrequency {
  return maxTermFrequency_;
}

- (jint)getUniqueTermCount {
  return uniqueTermCount_;
}

- (OrgApacheLuceneUtilAttributeSource *)getAttributeSource {
  return attributeSource_;
}

- (void)dealloc {
  RELEASE_(attributeSource_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeSource;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:withInt:withInt:withInt:withFloat:);
  methods[2].selector = @selector(resetWithFloat:);
  methods[3].selector = @selector(getPosition);
  methods[4].selector = @selector(getLength);
  methods[5].selector = @selector(setLengthWithInt:);
  methods[6].selector = @selector(getNumOverlap);
  methods[7].selector = @selector(setNumOverlapWithInt:);
  methods[8].selector = @selector(getOffset);
  methods[9].selector = @selector(getBoost);
  methods[10].selector = @selector(setBoostWithFloat:);
  methods[11].selector = @selector(getMaxTermFrequency);
  methods[12].selector = @selector(getUniqueTermCount);
  methods[13].selector = @selector(getAttributeSource);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "position_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "numOverlap_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "maxTermFrequency_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "uniqueTermCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "boost_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "attributeSource_", "LOrgApacheLuceneUtilAttributeSource;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIIIF", "reset", "F", "setLength", "I", "setNumOverlap", "setBoost" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInvertState = { "FieldInvertState", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x11, 14, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFieldInvertState;
}

@end

void OrgApacheLuceneIndexFieldInvertState_init(OrgApacheLuceneIndexFieldInvertState *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldInvertState, init)
}

OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldInvertState, init)
}

void OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(OrgApacheLuceneIndexFieldInvertState *self, jint position, jint length, jint numOverlap, jint offset, jfloat boost) {
  NSObject_init(self);
  self->position_ = position;
  self->length_ = length;
  self->numOverlap_ = numOverlap;
  self->offset_ = offset;
  self->boost_ = boost;
}

OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(jint position, jint length, jint numOverlap, jint offset, jfloat boost) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldInvertState, initWithInt_withInt_withInt_withInt_withFloat_, position, length, numOverlap, offset, boost)
}

OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_initWithInt_withInt_withInt_withInt_withFloat_(jint position, jint length, jint numOverlap, jint offset, jfloat boost) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldInvertState, initWithInt_withInt_withInt_withInt_withFloat_, position, length, numOverlap, offset, boost)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInvertState)