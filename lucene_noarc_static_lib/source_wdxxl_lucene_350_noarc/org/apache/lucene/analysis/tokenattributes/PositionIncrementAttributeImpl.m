//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/tokenattributes/PositionIncrementAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"

@interface OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl () {
 @public
  jint positionIncrement_;
}

@end

@implementation OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPositionIncrementWithInt:(jint)positionIncrement {
  if (positionIncrement < 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Increment must be zero or greater: ", positionIncrement));
  self->positionIncrement_ = positionIncrement;
}

- (jint)getPositionIncrement {
  return positionIncrement_;
}

- (void)clear {
  self->positionIncrement_ = 1;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return true;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl class]]) {
    return positionIncrement_ == ((OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *) nil_chk(((OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *) cast_chk(other, [OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl class]))))->positionIncrement_;
  }
  return false;
}

- (NSUInteger)hash {
  return positionIncrement_;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(t)) setPositionIncrementWithInt:positionIncrement_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPositionIncrementWithInt:);
  methods[2].selector = @selector(getPositionIncrement);
  methods[3].selector = @selector(clear);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "positionIncrement_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setPositionIncrement", "I", "equals", "LNSObject;", "hashCode", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl = { "PositionIncrementAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->positionIncrement_ = 1;
}

OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl)
