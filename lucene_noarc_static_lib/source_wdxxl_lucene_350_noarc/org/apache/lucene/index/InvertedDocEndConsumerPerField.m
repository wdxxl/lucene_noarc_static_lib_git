//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/InvertedDocEndConsumerPerField.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/InvertedDocEndConsumerPerField.h"

@implementation OrgApacheLuceneIndexInvertedDocEndConsumerPerField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexInvertedDocEndConsumerPerField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)finish {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)abort {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(finish);
  methods[2].selector = @selector(abort);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _OrgApacheLuceneIndexInvertedDocEndConsumerPerField = { "InvertedDocEndConsumerPerField", "org.apache.lucene.index", NULL, methods, NULL, 7, 0x400, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexInvertedDocEndConsumerPerField;
}

@end

void OrgApacheLuceneIndexInvertedDocEndConsumerPerField_init(OrgApacheLuceneIndexInvertedDocEndConsumerPerField *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexInvertedDocEndConsumerPerField)