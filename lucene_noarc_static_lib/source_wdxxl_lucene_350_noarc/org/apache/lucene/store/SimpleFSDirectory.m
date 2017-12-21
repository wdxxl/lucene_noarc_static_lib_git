//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/SimpleFSDirectory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileDescriptor.h"
#include "java/io/IOException.h"
#include "java/io/RandomAccessFile.h"
#include "java/lang/Deprecated.h"
#include "java/lang/OutOfMemoryError.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/SimpleFSDirectory.h"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput__Annotations$0();

@implementation OrgApacheLuceneStoreSimpleFSDirectory

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path
withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, lockFactory);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path {
  OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_(self, path);
  return self;
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                                                  withInt:(jint)bufferSize {
  [self ensureOpen];
  JavaIoFile *path = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  return create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(JreStrcat("$$$", @"SimpleFSIndexInput(path=\"", [path getPath], @"\")"), path, bufferSize, [self getReadChunkSize]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexInput;", 0x1, 3, 4, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withOrgApacheLuceneStoreLockFactory:);
  methods[1].selector = @selector(initWithJavaIoFile:);
  methods[2].selector = @selector(openInputWithNSString:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoFile;LOrgApacheLuceneStoreLockFactory;", "LJavaIoIOException;", "LJavaIoFile;", "openInput", "LNSString;I", "LOrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSimpleFSDirectory = { "SimpleFSDirectory", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSimpleFSDirectory;
}

@end

void OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreSimpleFSDirectory *self, JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, lockFactory);
}

OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSimpleFSDirectory, initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_, path, lockFactory)
}

OrgApacheLuceneStoreSimpleFSDirectory *create_OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSimpleFSDirectory, initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_, path, lockFactory)
}

void OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_(OrgApacheLuceneStoreSimpleFSDirectory *self, JavaIoFile *path) {
  OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, nil);
}

OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_(JavaIoFile *path) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSimpleFSDirectory, initWithJavaIoFile_, path)
}

OrgApacheLuceneStoreSimpleFSDirectory *create_OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_(JavaIoFile *path) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSimpleFSDirectory, initWithJavaIoFile_, path)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSimpleFSDirectory)

@implementation OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path
                           withInt:(jint)bufferSize
                           withInt:(jint)chunkSize {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithJavaIoFile_withInt_withInt_(self, path, bufferSize, chunkSize);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDesc
                  withJavaIoFile:(JavaIoFile *)path
                         withInt:(jint)bufferSize
                         withInt:(jint)chunkSize {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(self, resourceDesc, path, bufferSize, chunkSize);
  return self;
}

- (void)readInternalWithByteArray:(IOSByteArray *)b
                          withInt:(jint)offset
                          withInt:(jint)len {
  @synchronized(file_) {
    jlong position = [self getFilePointer];
    if (position != ((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_))->position_) {
      [file_ seekWithLong:position];
      file_->position_ = position;
    }
    jint total = 0;
    @try {
      do {
        jint readLength;
        if (total + chunkSize_ > len) {
          readLength = len - total;
        }
        else {
          readLength = chunkSize_;
        }
        jint i = [file_ readWithByteArray:b withInt:offset + total withInt:readLength];
        if (i == -1) {
          @throw create_JavaIoIOException_initWithNSString_(@"read past EOF");
        }
        file_->position_ += i;
        total += i;
      }
      while (total < len);
    }
    @catch (JavaLangOutOfMemoryError *e) {
      JavaLangOutOfMemoryError *outOfMemoryError = create_JavaLangOutOfMemoryError_initWithNSString_(JreStrcat("$IC", @"OutOfMemoryError likely caused by the Sun VM Bug described in https://issues.apache.org/jira/browse/LUCENE-1566; try calling FSDirectory.setReadChunkSize with a value smaller than the current chunk size (", chunkSize_, ')'));
      [outOfMemoryError initCauseWithNSException:e];
      @throw outOfMemoryError;
    }
    @catch (JavaIoIOException *ioe) {
      JavaIoIOException *newIOE = create_JavaIoIOException_initWithNSString_(JreStrcat("$$@", [ioe getMessage], @": ", self));
      [newIOE initCauseWithNSException:ioe];
      @throw newIOE;
    }
  }
}

- (void)close {
  if (!isClone_) [((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_)) close];
}

- (void)seekInternalWithLong:(jlong)position {
}

- (jlong)length {
  return ((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_))->length_;
}

- (id)java_clone {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *clone = (OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *) cast_chk([super java_clone], [OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput class]);
  ((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *) nil_chk(clone))->isClone_ = true;
  return clone;
}

- (jboolean)isFDValid {
  return [((JavaIoFileDescriptor *) nil_chk([((OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *) nil_chk(file_)) getFD])) valid];
}

- (void)copyBytesWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg
                                            withLong:(jlong)numBytes {
  numBytes -= [self flushBufferWithOrgApacheLuceneStoreIndexOutput:outArg withLong:numBytes];
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) copyBytesWithOrgApacheLuceneStoreDataInput:self withLong:numBytes];
}

- (void)dealloc {
  RELEASE_(file_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, 2, -1 },
    { NULL, NULL, 0x1, -1, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withInt:withInt:);
  methods[1].selector = @selector(initWithNSString:withJavaIoFile:withInt:withInt:);
  methods[2].selector = @selector(readInternalWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(close);
  methods[4].selector = @selector(seekInternalWithLong:);
  methods[5].selector = @selector(length);
  methods[6].selector = @selector(java_clone);
  methods[7].selector = @selector(isFDValid);
  methods[8].selector = @selector(copyBytesWithOrgApacheLuceneStoreIndexOutput:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "file_", "LOrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "isClone_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "chunkSize_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoFile;II", "LJavaIoIOException;", (void *)&OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput__Annotations$0, "LNSString;LJavaIoFile;II", "readInternal", "[BII", "seekInternal", "J", "clone", "copyBytes", "LOrgApacheLuceneStoreIndexOutput;J", "LOrgApacheLuceneStoreSimpleFSDirectory;", "LOrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput = { "SimpleFSIndexInput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0xc, 9, 3, 11, 12, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
}

@end

void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithJavaIoFile_withInt_withInt_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, JavaIoFile *path, jint bufferSize, jint chunkSize) {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(self, @"anonymous SimpleFSIndexInput", path, bufferSize, chunkSize);
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithJavaIoFile_withInt_withInt_(JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, initWithJavaIoFile_withInt_withInt_, path, bufferSize, chunkSize)
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithJavaIoFile_withInt_withInt_(JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, initWithJavaIoFile_withInt_withInt_, path, bufferSize, chunkSize)
}

void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *self, NSString *resourceDesc, JavaIoFile *path, jint bufferSize, jint chunkSize) {
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(self, resourceDesc, bufferSize);
  JreStrongAssignAndConsume(&self->file_, new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor_initWithJavaIoFile_withNSString_(path, @"r"));
  self->chunkSize_ = chunkSize;
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(NSString *resourceDesc, JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, initWithNSString_withJavaIoFile_withInt_withInt_, resourceDesc, path, bufferSize, chunkSize)
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput *create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaIoFile_withInt_withInt_(NSString *resourceDesc, JavaIoFile *path, jint bufferSize, jint chunkSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput, initWithNSString_withJavaIoFile_withInt_withInt_, resourceDesc, path, bufferSize, chunkSize)
}

IOSObjectArray *OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput)

@implementation OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor

- (instancetype)initWithJavaIoFile:(JavaIoFile *)file
                      withNSString:(NSString *)mode {
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor_initWithJavaIoFile_withNSString_(self, file, mode);
  return self;
}

- (void)close {
  if (JreLoadVolatileBoolean(&isOpen_)) {
    JreAssignVolatileBoolean(&isOpen_, false);
    [super close];
  }
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withNSString:);
  methods[1].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "isOpen_", "Z", .constantValue.asLong = 0, 0x44, -1, -1, -1, -1 },
    { "position_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "length_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoFile;LNSString;", "LJavaIoIOException;", "LOrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor = { "Descriptor", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0xc, 2, 3, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor;
}

@end

void OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor_initWithJavaIoFile_withNSString_(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *self, JavaIoFile *file, NSString *mode) {
  JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(self, file, mode);
  JreAssignVolatileBoolean(&self->isOpen_, true);
  self->length_ = [self length];
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *new_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor_initWithJavaIoFile_withNSString_(JavaIoFile *file, NSString *mode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor, initWithJavaIoFile_withNSString_, file, mode)
}

OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor *create_OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor_initWithJavaIoFile_withNSString_(JavaIoFile *file, NSString *mode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor, initWithJavaIoFile_withNSString_, file, mode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_Descriptor)
