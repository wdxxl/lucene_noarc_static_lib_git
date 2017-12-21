//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/FormatPostingsPositionsConsumer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/FormatPostingsPositionsConsumer.h"

@implementation OrgApacheLuceneIndexFormatPostingsPositionsConsumer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFormatPostingsPositionsConsumer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addPositionWithInt:(jint)position
             withByteArray:(IOSByteArray *)payload
                   withInt:(jint)payloadOffset
                   withInt:(jint)payloadLength {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)finish {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addPositionWithInt:withByteArray:withInt:withInt:);
  methods[2].selector = @selector(finish);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addPosition", "I[BII", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFormatPostingsPositionsConsumer = { "FormatPostingsPositionsConsumer", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x400, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFormatPostingsPositionsConsumer;
}

@end

void OrgApacheLuceneIndexFormatPostingsPositionsConsumer_init(OrgApacheLuceneIndexFormatPostingsPositionsConsumer *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFormatPostingsPositionsConsumer)
