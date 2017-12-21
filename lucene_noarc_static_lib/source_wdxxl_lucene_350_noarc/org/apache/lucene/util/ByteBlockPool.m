//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/ByteBlockPool.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/ByteBlockPool.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilByteBlockPool () {
 @public
  OrgApacheLuceneUtilByteBlockPool_Allocator *allocator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, allocator_, OrgApacheLuceneUtilByteBlockPool_Allocator *)

@interface OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator () {
 @public
  JavaUtilConcurrentAtomicAtomicLong *bytesUsed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, bytesUsed_, JavaUtilConcurrentAtomicAtomicLong *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilByteBlockPool)

IOSIntArray *OrgApacheLuceneUtilByteBlockPool_nextLevelArray;
IOSIntArray *OrgApacheLuceneUtilByteBlockPool_levelSizeArray;
jint OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE;

@implementation OrgApacheLuceneUtilByteBlockPool

- (instancetype)initWithOrgApacheLuceneUtilByteBlockPool_Allocator:(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator {
  OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(self, allocator);
  return self;
}

- (void)dropBuffersAndReset {
  if (bufferUpto_ != -1) {
    [((OrgApacheLuceneUtilByteBlockPool_Allocator *) nil_chk(allocator_)) recycleByteBlocksWithByteArray2:buffers_ withInt:0 withInt:1 + bufferUpto_];
    bufferUpto_ = -1;
    byteUpto_ = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
    byteOffset_ = -OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
    JreStrongAssignAndConsume(&buffers_, [IOSObjectArray newArrayWithLength:10 type:IOSClass_byteArray(1)]);
    JreStrongAssign(&buffer_, nil);
  }
}

- (void)reset {
  if (bufferUpto_ != -1) {
    for (jint i = 0; i < bufferUpto_; i++) JavaUtilArrays_fillWithByteArray_withByte_(IOSObjectArray_Get(nil_chk(buffers_), i), (jbyte) 0);
    JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(IOSObjectArray_Get(nil_chk(buffers_), bufferUpto_), 0, byteUpto_, (jbyte) 0);
    if (bufferUpto_ > 0) [((OrgApacheLuceneUtilByteBlockPool_Allocator *) nil_chk(allocator_)) recycleByteBlocksWithByteArray2:buffers_ withInt:1 withInt:1 + bufferUpto_];
    bufferUpto_ = 0;
    byteUpto_ = 0;
    byteOffset_ = 0;
    JreStrongAssign(&buffer_, IOSObjectArray_Get(nil_chk(buffers_), 0));
  }
}

- (void)nextBuffer {
  if (1 + bufferUpto_ == ((IOSObjectArray *) nil_chk(buffers_))->size_) {
    IOSObjectArray *newBuffers = [IOSObjectArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(buffers_->size_ + 1, JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF)) type:IOSClass_byteArray(1)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffers_, 0, newBuffers, 0, ((IOSObjectArray *) nil_chk(buffers_))->size_);
    JreStrongAssign(&buffers_, newBuffers);
  }
  JreStrongAssign(&buffer_, IOSObjectArray_Set(buffers_, 1 + bufferUpto_, [((OrgApacheLuceneUtilByteBlockPool_Allocator *) nil_chk(allocator_)) getByteBlock]));
  bufferUpto_++;
  byteUpto_ = 0;
  byteOffset_ += OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
}

- (jint)newSliceWithInt:(jint)size {
  if (byteUpto_ > OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - size) [self nextBuffer];
  jint upto = byteUpto_;
  byteUpto_ += size;
  *IOSByteArray_GetRef(nil_chk(buffer_), byteUpto_ - 1) = 16;
  return upto;
}

- (jint)allocSliceWithByteArray:(IOSByteArray *)slice
                        withInt:(jint)upto {
  jint level = IOSByteArray_Get(nil_chk(slice), upto) & 15;
  jint newLevel = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilByteBlockPool_nextLevelArray), level);
  jint newSize = IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilByteBlockPool_levelSizeArray), newLevel);
  if (byteUpto_ > OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE - newSize) [self nextBuffer];
  jint newUpto = byteUpto_;
  jint offset = newUpto + byteOffset_;
  byteUpto_ += newSize;
  *IOSByteArray_GetRef(nil_chk(buffer_), newUpto) = IOSByteArray_Get(slice, upto - 3);
  *IOSByteArray_GetRef(buffer_, newUpto + 1) = IOSByteArray_Get(slice, upto - 2);
  *IOSByteArray_GetRef(buffer_, newUpto + 2) = IOSByteArray_Get(slice, upto - 1);
  *IOSByteArray_GetRef(slice, upto - 3) = (jbyte) (JreURShift32(offset, 24));
  *IOSByteArray_GetRef(slice, upto - 2) = (jbyte) (JreURShift32(offset, 16));
  *IOSByteArray_GetRef(slice, upto - 1) = (jbyte) (JreURShift32(offset, 8));
  *IOSByteArray_GetRef(slice, upto) = (jbyte) offset;
  *IOSByteArray_GetRef(buffer_, byteUpto_ - 1) = (jbyte) (16 | newLevel);
  return newUpto + 3;
}

- (OrgApacheLuceneUtilBytesRef *)setBytesRefWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                                                    withInt:(jint)textStart {
  IOSByteArray *bytes = JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(term))->bytes_, IOSObjectArray_Get(nil_chk(buffers_), JreRShift32(textStart, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT)));
  jint pos = textStart & OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK;
  if ((IOSByteArray_Get(bytes, pos) & (jint) 0x80) == 0) {
    term->length_ = IOSByteArray_Get(bytes, pos);
    term->offset_ = pos + 1;
  }
  else {
    term->length_ = (IOSByteArray_Get(bytes, pos) & (jint) 0x7f) + (JreLShift32((IOSByteArray_Get(bytes, pos + 1) & (jint) 0xff), 7));
    term->offset_ = pos + 2;
  }
  JreAssert((term->length_ >= 0), (@"org/apache/lucene/util/ByteBlockPool.java:244 condition failed: assert term.length >= 0;"));
  return term;
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  jint length = ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_;
  jint offset = bytes->offset_;
  jint overflow = (length + byteUpto_) - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  do {
    if (overflow <= 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, offset, buffer_, byteUpto_, length);
      byteUpto_ += length;
      break;
    }
    else {
      jint bytesToCopy = length - overflow;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes->bytes_, offset, buffer_, byteUpto_, bytesToCopy);
      offset += bytesToCopy;
      length -= bytesToCopy;
      [self nextBuffer];
      overflow = overflow - OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
    }
  }
  while (true);
}

- (void)writePoolWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  jint bytesOffset = byteOffset_;
  jint block = 0;
  while (bytesOffset > 0) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeBytesWithByteArray:IOSObjectArray_Get(nil_chk(buffers_), block++) withInt:OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE];
    bytesOffset -= OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  }
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeBytesWithByteArray:IOSObjectArray_Get(nil_chk(buffers_), block) withInt:byteUpto_];
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(buffer_);
  RELEASE_(allocator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x11, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 9, 10, 11, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilByteBlockPool_Allocator:);
  methods[1].selector = @selector(dropBuffersAndReset);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(nextBuffer);
  methods[4].selector = @selector(newSliceWithInt:);
  methods[5].selector = @selector(allocSliceWithByteArray:withInt:);
  methods[6].selector = @selector(setBytesRefWithOrgApacheLuceneUtilBytesRef:withInt:);
  methods[7].selector = @selector(copy__WithOrgApacheLuceneUtilBytesRef:);
  methods[8].selector = @selector(writePoolWithOrgApacheLuceneStoreDataOutput:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BYTE_BLOCK_SHIFT", "I", .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT, 0x19, -1, -1, -1, -1 },
    { "BYTE_BLOCK_SIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE, 0x19, -1, -1, -1, -1 },
    { "BYTE_BLOCK_MASK", "I", .constantValue.asInt = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK, 0x19, -1, -1, -1, -1 },
    { "buffers_", "[[B", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "bufferUpto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "byteUpto_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "buffer_", "[B", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "byteOffset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "allocator_", "LOrgApacheLuceneUtilByteBlockPool_Allocator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "nextLevelArray", "[I", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "levelSizeArray", "[I", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "FIRST_LEVEL_SIZE", "I", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilByteBlockPool_Allocator;", "newSlice", "I", "allocSlice", "[BI", "setBytesRef", "LOrgApacheLuceneUtilBytesRef;I", "copy", "LOrgApacheLuceneUtilBytesRef;", "writePool", "LOrgApacheLuceneStoreDataOutput;", "LJavaIoIOException;", &OrgApacheLuceneUtilByteBlockPool_nextLevelArray, &OrgApacheLuceneUtilByteBlockPool_levelSizeArray, &OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE, "LOrgApacheLuceneUtilByteBlockPool_Allocator;LOrgApacheLuceneUtilByteBlockPool_DirectAllocator;LOrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool = { "ByteBlockPool", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 9, 12, -1, 15, -1, -1, -1 };
  return &_OrgApacheLuceneUtilByteBlockPool;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilByteBlockPool class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_nextLevelArray, [IOSIntArray newArrayWithInts:(jint[]){ 1, 2, 3, 4, 5, 6, 7, 8, 9, 9 } count:10]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_levelSizeArray, [IOSIntArray newArrayWithInts:(jint[]){ 5, 14, 20, 30, 40, 40, 80, 80, 120, 200 } count:10]);
    OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE = IOSIntArray_Get(OrgApacheLuceneUtilByteBlockPool_levelSizeArray, 0);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilByteBlockPool)
  }
}

@end

void OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool *self, OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, [IOSObjectArray newArrayWithLength:10 type:IOSClass_byteArray(1)]);
  self->bufferUpto_ = -1;
  self->byteUpto_ = OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  self->byteOffset_ = -OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE;
  JreStrongAssign(&self->allocator_, allocator);
}

OrgApacheLuceneUtilByteBlockPool *new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool, initWithOrgApacheLuceneUtilByteBlockPool_Allocator_, allocator)
}

OrgApacheLuceneUtilByteBlockPool *create_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool, initWithOrgApacheLuceneUtilByteBlockPool_Allocator_, allocator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool)

@implementation OrgApacheLuceneUtilByteBlockPool_Allocator

- (instancetype)initWithInt:(jint)blockSize {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
  return self;
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)recycleByteBlocksWithJavaUtilList:(id<JavaUtilList>)blocks {
  IOSObjectArray *b = [((id<JavaUtilList>) nil_chk(blocks)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[blocks size] type:IOSClass_byteArray(1)]];
  [self recycleByteBlocksWithByteArray2:b withInt:0 withInt:((IOSObjectArray *) nil_chk(b))->size_];
}

- (IOSByteArray *)getByteBlock {
  return [IOSByteArray arrayWithLength:blockSize_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, 4, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(recycleByteBlocksWithByteArray2:withInt:withInt:);
  methods[2].selector = @selector(recycleByteBlocksWithJavaUtilList:);
  methods[3].selector = @selector(getByteBlock);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "blockSize_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "recycleByteBlocks", "[[BII", "LJavaUtilList;", "(Ljava/util/List<[B>;)V", "LOrgApacheLuceneUtilByteBlockPool;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_Allocator = { "Allocator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x409, 4, 1, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilByteBlockPool_Allocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_Allocator *self, jint blockSize) {
  NSObject_init(self);
  self->blockSize_ = blockSize;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_Allocator)

@implementation OrgApacheLuceneUtilByteBlockPool_DirectAllocator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)blockSize {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(self, blockSize);
  return self;
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(recycleByteBlocksWithByteArray2:withInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "recycleByteBlocks", "[[BII", "LOrgApacheLuceneUtilByteBlockPool;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_DirectAllocator = { "DirectAllocator", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x19, 3, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilByteBlockPool_DirectAllocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self) {
  OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(self, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE);
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, init)
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, init)
}

void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self, jint blockSize) {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, initWithInt_, blockSize)
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectAllocator, initWithInt_, blockSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

@implementation OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator

- (instancetype)initWithJavaUtilConcurrentAtomicAtomicLong:(JavaUtilConcurrentAtomicAtomicLong *)bytesUsed {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithJavaUtilConcurrentAtomicAtomicLong_(self, bytesUsed);
  return self;
}

- (instancetype)initWithInt:(jint)blockSize
withJavaUtilConcurrentAtomicAtomicLong:(JavaUtilConcurrentAtomicAtomicLong *)bytesUsed {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withJavaUtilConcurrentAtomicAtomicLong_(self, blockSize, bytesUsed);
  return self;
}

- (IOSByteArray *)getByteBlock {
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:blockSize_];
  return [IOSByteArray arrayWithLength:blockSize_];
}

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end {
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:-((end - start) * blockSize_)];
  for (jint i = start; i < end; i++) {
    IOSObjectArray_Set(nil_chk(blocks), i, nil);
  }
}

- (void)dealloc {
  RELEASE_(bytesUsed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilConcurrentAtomicAtomicLong:);
  methods[1].selector = @selector(initWithInt:withJavaUtilConcurrentAtomicAtomicLong:);
  methods[2].selector = @selector(getByteBlock);
  methods[3].selector = @selector(recycleByteBlocksWithByteArray2:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bytesUsed_", "LJavaUtilConcurrentAtomicAtomicLong;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentAtomicAtomicLong;", "ILJavaUtilConcurrentAtomicAtomicLong;", "recycleByteBlocks", "[[BII", "LOrgApacheLuceneUtilByteBlockPool;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator = { "DirectTrackingAllocator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x9, 4, 1, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator;
}

@end

void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithJavaUtilConcurrentAtomicAtomicLong_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withJavaUtilConcurrentAtomicAtomicLong_(self, OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE, bytesUsed);
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithJavaUtilConcurrentAtomicAtomicLong_(JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithJavaUtilConcurrentAtomicAtomicLong_, bytesUsed)
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithJavaUtilConcurrentAtomicAtomicLong_(JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithJavaUtilConcurrentAtomicAtomicLong_, bytesUsed)
}

void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withJavaUtilConcurrentAtomicAtomicLong_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, jint blockSize, JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(self, blockSize);
  JreStrongAssign(&self->bytesUsed_, bytesUsed);
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withJavaUtilConcurrentAtomicAtomicLong_(jint blockSize, JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithInt_withJavaUtilConcurrentAtomicAtomicLong_, blockSize, bytesUsed)
}

OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *create_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withJavaUtilConcurrentAtomicAtomicLong_(jint blockSize, JavaUtilConcurrentAtomicAtomicLong *bytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator, initWithInt_withJavaUtilConcurrentAtomicAtomicLong_, blockSize, bytesUsed)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)
