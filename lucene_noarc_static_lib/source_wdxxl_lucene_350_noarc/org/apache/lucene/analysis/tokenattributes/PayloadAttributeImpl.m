//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/tokenattributes/PayloadAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttributeImpl.h"
#include "org/apache/lucene/index/Payload.h"
#include "org/apache/lucene/util/AttributeImpl.h"

@interface OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl () {
 @public
  OrgApacheLuceneIndexPayload *payload_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl, payload_, OrgApacheLuceneIndexPayload *)

@implementation OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneIndexPayload:(OrgApacheLuceneIndexPayload *)payload {
  OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_initWithOrgApacheLuceneIndexPayload_(self, payload);
  return self;
}

- (OrgApacheLuceneIndexPayload *)getPayload {
  return self->payload_;
}

- (void)setPayloadWithOrgApacheLuceneIndexPayload:(OrgApacheLuceneIndexPayload *)payload {
  JreStrongAssign(&self->payload_, payload);
}

- (void)clear {
  JreStrongAssign(&payload_, nil);
}

- (id)java_clone {
  OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *clone = (OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *) cast_chk([super java_clone], [OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl class]);
  if (payload_ != nil) {
    JreStrongAssign(&((OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *) nil_chk(clone))->payload_, (OrgApacheLuceneIndexPayload *) cast_chk([payload_ java_clone], [OrgApacheLuceneIndexPayload class]));
  }
  return clone;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return true;
  }
  if ([OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_() isInstance:other]) {
    OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *o = (OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *) cast_chk(other, [OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl class]);
    if (((OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *) nil_chk(o))->payload_ == nil || payload_ == nil) {
      return o->payload_ == nil && payload_ == nil;
    }
    return [o->payload_ isEqual:payload_];
  }
  return false;
}

- (NSUInteger)hash {
  return (payload_ == nil) ? 0 : ((jint) [((OrgApacheLuceneIndexPayload *) nil_chk(payload_)) hash]);
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) nil_chk(t)) setPayloadWithOrgApacheLuceneIndexPayload:(payload_ == nil) ? nil : (OrgApacheLuceneIndexPayload *) cast_chk([((OrgApacheLuceneIndexPayload *) nil_chk(payload_)) java_clone], [OrgApacheLuceneIndexPayload class])];
}

- (void)dealloc {
  RELEASE_(payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexPayload;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexPayload:);
  methods[2].selector = @selector(getPayload);
  methods[3].selector = @selector(setPayloadWithOrgApacheLuceneIndexPayload:);
  methods[4].selector = @selector(clear);
  methods[5].selector = @selector(java_clone);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "payload_", "LOrgApacheLuceneIndexPayload;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexPayload;", "setPayload", "clone", "equals", "LNSObject;", "hashCode", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl = { "PayloadAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
}

OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl, init)
}

void OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_initWithOrgApacheLuceneIndexPayload_(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *self, OrgApacheLuceneIndexPayload *payload) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssign(&self->payload_, payload);
}

OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_initWithOrgApacheLuceneIndexPayload_(OrgApacheLuceneIndexPayload *payload) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl, initWithOrgApacheLuceneIndexPayload_, payload)
}

OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl_initWithOrgApacheLuceneIndexPayload_(OrgApacheLuceneIndexPayload *payload) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl, initWithOrgApacheLuceneIndexPayload_, payload)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesPayloadAttributeImpl)
