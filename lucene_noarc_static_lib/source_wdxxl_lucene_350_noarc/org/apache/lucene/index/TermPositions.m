//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermPositions.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/TermPositions.h"

@interface OrgApacheLuceneIndexTermPositions : NSObject

@end

@implementation OrgApacheLuceneIndexTermPositions

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(nextPosition);
  methods[1].selector = @selector(getPayloadLength);
  methods[2].selector = @selector(getPayloadWithByteArray:withInt:);
  methods[3].selector = @selector(isPayloadAvailable);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;", "getPayload", "[BI" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTermPositions = { "TermPositions", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTermPositions;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTermPositions)