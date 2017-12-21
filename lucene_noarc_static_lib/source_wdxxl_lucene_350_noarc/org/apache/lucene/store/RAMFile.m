//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/RAMFile.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/store/RAMDirectory.h"
#include "org/apache/lucene/store/RAMFile.h"

@interface OrgApacheLuceneStoreRAMFile () {
 @public
  jlong lastModified_;
}

@end

inline jlong OrgApacheLuceneStoreRAMFile_get_serialVersionUID();
#define OrgApacheLuceneStoreRAMFile_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreRAMFile, serialVersionUID, jlong)

@implementation OrgApacheLuceneStoreRAMFile

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreRAMFile_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneStoreRAMDirectory:(OrgApacheLuceneStoreRAMDirectory *)directory {
  OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(self, directory);
  return self;
}

- (jlong)getLength {
  @synchronized(self) {
    return length_;
  }
}

- (void)setLengthWithLong:(jlong)length {
  @synchronized(self) {
    self->length_ = length;
  }
}

- (jlong)getLastModified {
  @synchronized(self) {
    return lastModified_;
  }
}

- (void)setLastModifiedWithLong:(jlong)lastModified {
  @synchronized(self) {
    self->lastModified_ = lastModified;
  }
}

- (IOSByteArray *)addBufferWithInt:(jint)size {
  IOSByteArray *buffer = [self newBufferWithInt:size];
  @synchronized(self) {
    [((JavaUtilArrayList *) nil_chk(buffers_)) addWithId:buffer];
    sizeInBytes_ += size;
  }
  if (directory_ != nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(directory_->sizeInBytes_)) getAndAddWithLong:size];
  }
  return buffer;
}

- (IOSByteArray *)getBufferWithInt:(jint)index {
  @synchronized(self) {
    return [((JavaUtilArrayList *) nil_chk(buffers_)) getWithInt:index];
  }
}

- (jint)numBuffers {
  @synchronized(self) {
    return [((JavaUtilArrayList *) nil_chk(buffers_)) size];
  }
}

- (IOSByteArray *)newBufferWithInt:(jint)size {
  return [IOSByteArray arrayWithLength:size];
}

- (jlong)getSizeInBytes {
  @synchronized(self) {
    return sizeInBytes_;
  }
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(directory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x24, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x24, 3, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x14, 4, 5, -1, -1, -1, -1 },
    { NULL, "[B", 0x34, 6, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x34, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 7, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x21, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreRAMDirectory:);
  methods[2].selector = @selector(getLength);
  methods[3].selector = @selector(setLengthWithLong:);
  methods[4].selector = @selector(getLastModified);
  methods[5].selector = @selector(setLastModifiedWithLong:);
  methods[6].selector = @selector(addBufferWithInt:);
  methods[7].selector = @selector(getBufferWithInt:);
  methods[8].selector = @selector(numBuffers);
  methods[9].selector = @selector(newBufferWithInt:);
  methods[10].selector = @selector(getSizeInBytes);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheLuceneStoreRAMFile_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "buffers_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x4, -1, -1, 8, -1 },
    { "length_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "directory_", "LOrgApacheLuceneStoreRAMDirectory;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "sizeInBytes_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "lastModified_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreRAMDirectory;", "setLength", "J", "setLastModified", "addBuffer", "I", "getBuffer", "newBuffer", "Ljava/util/ArrayList<[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMFile = { "RAMFile", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x1, 11, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreRAMFile;
}

@end

void OrgApacheLuceneStoreRAMFile_init(OrgApacheLuceneStoreRAMFile *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, new_JavaUtilArrayList_init());
  self->lastModified_ = JavaLangSystem_currentTimeMillis();
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMFile, init)
}

OrgApacheLuceneStoreRAMFile *create_OrgApacheLuceneStoreRAMFile_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMFile, init)
}

void OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMFile *self, OrgApacheLuceneStoreRAMDirectory *directory) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, new_JavaUtilArrayList_init());
  self->lastModified_ = JavaLangSystem_currentTimeMillis();
  JreStrongAssign(&self->directory_, directory);
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMDirectory *directory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMFile, initWithOrgApacheLuceneStoreRAMDirectory_, directory)
}

OrgApacheLuceneStoreRAMFile *create_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMDirectory *directory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMFile, initWithOrgApacheLuceneStoreRAMDirectory_, directory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMFile)
