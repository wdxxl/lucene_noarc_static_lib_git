//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/spans/Spans.java
//

#include "J2ObjC_source.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/search/spans/Spans.h"

@implementation OrgApacheLuceneSearchSpansSpans

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpansSpans_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)next {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)skipToWithInt:(jint)target {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)start {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilCollection>)getPayload {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isPayloadAvailable {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x401, -1, -1, 0, 3, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(next);
  methods[2].selector = @selector(skipToWithInt:);
  methods[3].selector = @selector(doc);
  methods[4].selector = @selector(start);
  methods[5].selector = @selector(end);
  methods[6].selector = @selector(getPayload);
  methods[7].selector = @selector(isPayloadAvailable);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;", "skipTo", "I", "()Ljava/util/Collection<[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpans = { "Spans", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x401, 8, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpans;
}

@end

void OrgApacheLuceneSearchSpansSpans_init(OrgApacheLuceneSearchSpansSpans *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpans)
