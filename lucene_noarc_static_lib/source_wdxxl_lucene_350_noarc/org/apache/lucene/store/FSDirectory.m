//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/FSDirectory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileDescriptor.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/FilenameFilter.h"
#include "java/io/IOException.h"
#include "java/io/RandomAccessFile.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/BufferedIndexOutput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/FSLockFactory.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/MMapDirectory.h"
#include "org/apache/lucene/store/NIOFSDirectory.h"
#include "org/apache/lucene/store/NativeFSLockFactory.h"
#include "org/apache/lucene/store/NoSuchDirectoryException.h"
#include "org/apache/lucene/store/SimpleFSDirectory.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

@interface OrgApacheLuceneStoreFSDirectory () {
 @public
  jint chunkSize_;
}

+ (JavaIoFile *)getCanonicalPathWithJavaIoFile:(JavaIoFile *)file;

@end

__attribute__((unused)) static JavaIoFile *OrgApacheLuceneStoreFSDirectory_getCanonicalPathWithJavaIoFile_(JavaIoFile *file);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$2();

@interface OrgApacheLuceneStoreFSDirectory_1 : NSObject < JavaIoFilenameFilter >

- (instancetype)init;

- (jboolean)acceptWithJavaIoFile:(JavaIoFile *)dir
                    withNSString:(NSString *)file;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreFSDirectory_1)

__attribute__((unused)) static void OrgApacheLuceneStoreFSDirectory_1_init(OrgApacheLuceneStoreFSDirectory_1 *self);

__attribute__((unused)) static OrgApacheLuceneStoreFSDirectory_1 *new_OrgApacheLuceneStoreFSDirectory_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreFSDirectory_1 *create_OrgApacheLuceneStoreFSDirectory_1_init();

@interface OrgApacheLuceneStoreFSDirectory_FSIndexOutput () {
 @public
  OrgApacheLuceneStoreFSDirectory *parent_;
  NSString *name_;
  JavaIoRandomAccessFile *file_;
  volatile_jboolean isOpen_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, parent_, OrgApacheLuceneStoreFSDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, file_, JavaIoRandomAccessFile *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneStoreFSDirectory)

jint OrgApacheLuceneStoreFSDirectory_DEFAULT_READ_CHUNK_SIZE;

@implementation OrgApacheLuceneStoreFSDirectory

+ (JavaIoFile *)getCanonicalPathWithJavaIoFile:(JavaIoFile *)file {
  return OrgApacheLuceneStoreFSDirectory_getCanonicalPathWithJavaIoFile_(file);
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)path
withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(self, path, lockFactory);
  return self;
}

+ (OrgApacheLuceneStoreFSDirectory *)openWithJavaIoFile:(JavaIoFile *)path {
  return OrgApacheLuceneStoreFSDirectory_openWithJavaIoFile_(path);
}

+ (OrgApacheLuceneStoreFSDirectory *)openWithJavaIoFile:(JavaIoFile *)path
                    withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  return OrgApacheLuceneStoreFSDirectory_openWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(path, lockFactory);
}

- (void)setLockFactoryWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  [super setLockFactoryWithOrgApacheLuceneStoreLockFactory:lockFactory];
  if ([lockFactory isKindOfClass:[OrgApacheLuceneStoreFSLockFactory class]]) {
    OrgApacheLuceneStoreFSLockFactory *lf = (OrgApacheLuceneStoreFSLockFactory *) cast_chk(lockFactory, [OrgApacheLuceneStoreFSLockFactory class]);
    JavaIoFile *dir = [((OrgApacheLuceneStoreFSLockFactory *) nil_chk(lf)) getLockDir];
    if (dir == nil) {
      [lf setLockDirWithJavaIoFile:directory_];
      [lf setLockPrefixWithNSString:nil];
    }
    else if ([((NSString *) nil_chk([dir getCanonicalPath])) isEqual:[((JavaIoFile *) nil_chk(directory_)) getCanonicalPath]]) {
      [lf setLockPrefixWithNSString:nil];
    }
  }
}

+ (IOSObjectArray *)listAllWithJavaIoFile:(JavaIoFile *)dir {
  return OrgApacheLuceneStoreFSDirectory_listAllWithJavaIoFile_(dir);
}

- (IOSObjectArray *)listAll {
  [self ensureOpen];
  return OrgApacheLuceneStoreFSDirectory_listAllWithJavaIoFile_(directory_);
}

- (jboolean)fileExistsWithNSString:(NSString *)name {
  [self ensureOpen];
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  return [file exists];
}

- (jlong)fileModifiedWithNSString:(NSString *)name {
  [self ensureOpen];
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  return [file lastModified];
}

+ (jlong)fileModifiedWithJavaIoFile:(JavaIoFile *)directory
                       withNSString:(NSString *)name {
  return OrgApacheLuceneStoreFSDirectory_fileModifiedWithJavaIoFile_withNSString_(directory, name);
}

- (void)touchFileWithNSString:(NSString *)name {
  [self ensureOpen];
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  [file setLastModifiedWithLong:JavaLangSystem_currentTimeMillis()];
}

- (jlong)fileLengthWithNSString:(NSString *)name {
  [self ensureOpen];
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  jlong len = [file length];
  if (len == 0 && ![file exists]) {
    @throw create_JavaIoFileNotFoundException_initWithNSString_(name);
  }
  else {
    return len;
  }
}

- (void)deleteFileWithNSString:(NSString *)name {
  [self ensureOpen];
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  if (![file delete__]) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$@", @"Cannot delete ", file));
  [((id<JavaUtilSet>) nil_chk(staleFiles_)) removeWithId:name];
}

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name {
  [self ensureOpen];
  [self ensureCanWriteWithNSString:name];
  return create_OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(self, name);
}

- (void)ensureCanWriteWithNSString:(NSString *)name {
  if (![((JavaIoFile *) nil_chk(directory_)) exists]) if (![directory_ mkdirs]) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$@", @"Cannot create directory: ", directory_));
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  if ([file exists] && ![file delete__]) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$@", @"Cannot overwrite: ", file));
}

- (void)onIndexOutputClosedWithOrgApacheLuceneStoreFSDirectory_FSIndexOutput:(OrgApacheLuceneStoreFSDirectory_FSIndexOutput *)io {
  [((id<JavaUtilSet>) nil_chk(staleFiles_)) addWithId:((OrgApacheLuceneStoreFSDirectory_FSIndexOutput *) nil_chk(io))->name_];
}

- (void)syncWithNSString:(NSString *)name {
  [self syncWithJavaUtilCollection:JavaUtilCollections_singletonWithId_(name)];
}

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names {
  [self ensureOpen];
  id<JavaUtilSet> toSync = create_JavaUtilHashSet_initWithJavaUtilCollection_(names);
  [toSync retainAllWithJavaUtilCollection:staleFiles_];
  for (NSString * __strong name in toSync) [self fsyncWithNSString:name];
  [((id<JavaUtilSet>) nil_chk(staleFiles_)) removeAllWithJavaUtilCollection:toSync];
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name {
  [self ensureOpen];
  return [self openInputWithNSString:name withInt:OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE];
}

- (NSString *)getLockID {
  [self ensureOpen];
  NSString *dirName;
  @try {
    dirName = [((JavaIoFile *) nil_chk(directory_)) getCanonicalPath];
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withNSException_([e description], e);
  }
  jint digest = 0;
  for (jint charIDX = 0; charIDX < [((NSString *) nil_chk(dirName)) java_length]; charIDX++) {
    jchar ch = [dirName charAtWithInt:charIDX];
    digest = 31 * digest + ch;
  }
  return JreStrcat("$$", @"lucene-", JavaLangInteger_toHexStringWithInt_(digest));
}

- (void)close {
  @synchronized(self) {
    JreAssignVolatileBoolean(&isOpen_, false);
  }
}

- (JavaIoFile *)getFile {
  return [self getDirectory];
}

- (JavaIoFile *)getDirectory {
  [self ensureOpen];
  return directory_;
}

- (NSString *)description {
  return JreStrcat("$C@$@", [[self java_getClass] getName], '@', directory_, @" lockFactory=", [self getLockFactory]);
}

- (void)setReadChunkSizeWithInt:(jint)chunkSize {
  if (chunkSize <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"chunkSize must be positive");
  }
  if (!JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT)) {
    self->chunkSize_ = chunkSize;
  }
}

- (jint)getReadChunkSize {
  return chunkSize_;
}

- (void)fsyncWithNSString:(NSString *)name {
  JavaIoFile *fullFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory_, name);
  jboolean success = false;
  jint retryCount = 0;
  JavaIoIOException *exc = nil;
  while (!success && retryCount < 5) {
    retryCount++;
    JavaIoRandomAccessFile *file = nil;
    @try {
      @try {
        file = create_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(fullFile, @"rw");
        [((JavaIoFileDescriptor *) nil_chk([file getFD])) sync];
        success = true;
      }
      @finally {
        if (file != nil) [file close];
      }
    }
    @catch (JavaIoIOException *ioe) {
      if (exc == nil) exc = ioe;
      @try {
        JavaLangThread_sleepWithLong_(5);
      }
      @catch (JavaLangInterruptedException *ie) {
        @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
      }
    }
  }
  if (!success) @throw nil_chk(exc);
}

- (void)dealloc {
  RELEASE_(directory_);
  RELEASE_(staleFiles_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaIoFile;", 0xa, 0, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 3, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreFSDirectory;", 0x9, 4, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreFSDirectory;", 0x9, 4, 3, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 2, -1, -1, -1 },
    { NULL, "[LNSString;", 0x9, 7, 1, 2, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 9, -1, -1, 13, -1 },
    { NULL, "J", 0x1, 14, 9, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 9, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexOutput;", 0x1, 16, 9, 2, -1, -1, -1 },
    { NULL, "V", 0x4, 17, 9, 2, -1, -1, -1 },
    { NULL, "V", 0x4, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 9, 2, -1, 21, -1 },
    { NULL, "V", 0x1, 20, 22, 2, 23, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreIndexInput;", 0x1, 24, 9, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x1, -1, -1, -1, -1, 25, -1 },
    { NULL, "LJavaIoFile;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 26, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 27, 28, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 29, 9, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getCanonicalPathWithJavaIoFile:);
  methods[1].selector = @selector(initWithJavaIoFile:withOrgApacheLuceneStoreLockFactory:);
  methods[2].selector = @selector(openWithJavaIoFile:);
  methods[3].selector = @selector(openWithJavaIoFile:withOrgApacheLuceneStoreLockFactory:);
  methods[4].selector = @selector(setLockFactoryWithOrgApacheLuceneStoreLockFactory:);
  methods[5].selector = @selector(listAllWithJavaIoFile:);
  methods[6].selector = @selector(listAll);
  methods[7].selector = @selector(fileExistsWithNSString:);
  methods[8].selector = @selector(fileModifiedWithNSString:);
  methods[9].selector = @selector(fileModifiedWithJavaIoFile:withNSString:);
  methods[10].selector = @selector(touchFileWithNSString:);
  methods[11].selector = @selector(fileLengthWithNSString:);
  methods[12].selector = @selector(deleteFileWithNSString:);
  methods[13].selector = @selector(createOutputWithNSString:);
  methods[14].selector = @selector(ensureCanWriteWithNSString:);
  methods[15].selector = @selector(onIndexOutputClosedWithOrgApacheLuceneStoreFSDirectory_FSIndexOutput:);
  methods[16].selector = @selector(syncWithNSString:);
  methods[17].selector = @selector(syncWithJavaUtilCollection:);
  methods[18].selector = @selector(openInputWithNSString:);
  methods[19].selector = @selector(getLockID);
  methods[20].selector = @selector(close);
  methods[21].selector = @selector(getFile);
  methods[22].selector = @selector(getDirectory);
  methods[23].selector = @selector(description);
  methods[24].selector = @selector(setReadChunkSizeWithInt:);
  methods[25].selector = @selector(getReadChunkSize);
  methods[26].selector = @selector(fsyncWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_READ_CHUNK_SIZE", "I", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "directory_", "LJavaIoFile;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "staleFiles_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x14, -1, -1, 31, -1 },
    { "chunkSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getCanonicalPath", "LJavaIoFile;", "LJavaIoIOException;", "LJavaIoFile;LOrgApacheLuceneStoreLockFactory;", "open", "setLockFactory", "LOrgApacheLuceneStoreLockFactory;", "listAll", "fileExists", "LNSString;", "fileModified", "LJavaIoFile;LNSString;", "touchFile", (void *)&OrgApacheLuceneStoreFSDirectory__Annotations$0, "fileLength", "deleteFile", "createOutput", "ensureCanWrite", "onIndexOutputClosed", "LOrgApacheLuceneStoreFSDirectory_FSIndexOutput;", "sync", (void *)&OrgApacheLuceneStoreFSDirectory__Annotations$1, "LJavaUtilCollection;", "(Ljava/util/Collection<Ljava/lang/String;>;)V", "openInput", (void *)&OrgApacheLuceneStoreFSDirectory__Annotations$2, "toString", "setReadChunkSize", "I", "fsync", &OrgApacheLuceneStoreFSDirectory_DEFAULT_READ_CHUNK_SIZE, "Ljava/util/Set<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreFSDirectory = { "FSDirectory", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x401, 27, 4, -1, 19, -1, -1, -1 };
  return &_OrgApacheLuceneStoreFSDirectory;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneStoreFSDirectory class]) {
    OrgApacheLuceneStoreFSDirectory_DEFAULT_READ_CHUNK_SIZE = JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT) ? JavaLangInteger_MAX_VALUE : 100 * 1024 * 1024;
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneStoreFSDirectory)
  }
}

@end

JavaIoFile *OrgApacheLuceneStoreFSDirectory_getCanonicalPathWithJavaIoFile_(JavaIoFile *file) {
  OrgApacheLuceneStoreFSDirectory_initialize();
  return create_JavaIoFile_initWithNSString_([((JavaIoFile *) nil_chk(file)) getCanonicalPath]);
}

void OrgApacheLuceneStoreFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreFSDirectory *self, JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreDirectory_init(self);
  JreStrongAssign(&self->staleFiles_, JavaUtilCollections_synchronizedSetWithJavaUtilSet_(create_JavaUtilHashSet_init()));
  self->chunkSize_ = OrgApacheLuceneStoreFSDirectory_DEFAULT_READ_CHUNK_SIZE;
  if (lockFactory == nil) {
    lockFactory = create_OrgApacheLuceneStoreNativeFSLockFactory_init();
  }
  JreStrongAssign(&self->directory_, OrgApacheLuceneStoreFSDirectory_getCanonicalPathWithJavaIoFile_(path));
  if ([((JavaIoFile *) nil_chk(self->directory_)) exists] && ![self->directory_ isDirectory]) @throw create_OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(JreStrcat("$@$", @"file '", self->directory_, @"' exists but is not a directory"));
  [self setLockFactoryWithOrgApacheLuceneStoreLockFactory:lockFactory];
}

OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneStoreFSDirectory_openWithJavaIoFile_(JavaIoFile *path) {
  OrgApacheLuceneStoreFSDirectory_initialize();
  return OrgApacheLuceneStoreFSDirectory_openWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(path, nil);
}

OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneStoreFSDirectory_openWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(JavaIoFile *path, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreFSDirectory_initialize();
  if ((JreLoadStatic(OrgApacheLuceneUtilConstants, WINDOWS) || JreLoadStatic(OrgApacheLuceneUtilConstants, SUN_OS) || JreLoadStatic(OrgApacheLuceneUtilConstants, LINUX)) && JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT) && JreLoadStatic(OrgApacheLuceneStoreMMapDirectory, UNMAP_SUPPORTED)) {
    return create_OrgApacheLuceneStoreMMapDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(path, lockFactory);
  }
  else if (JreLoadStatic(OrgApacheLuceneUtilConstants, WINDOWS)) {
    return create_OrgApacheLuceneStoreSimpleFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(path, lockFactory);
  }
  else {
    return create_OrgApacheLuceneStoreNIOFSDirectory_initWithJavaIoFile_withOrgApacheLuceneStoreLockFactory_(path, lockFactory);
  }
}

IOSObjectArray *OrgApacheLuceneStoreFSDirectory_listAllWithJavaIoFile_(JavaIoFile *dir) {
  OrgApacheLuceneStoreFSDirectory_initialize();
  if (![((JavaIoFile *) nil_chk(dir)) exists]) @throw create_OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(JreStrcat("$@$", @"directory '", dir, @"' does not exist"));
  else if (![dir isDirectory]) @throw create_OrgApacheLuceneStoreNoSuchDirectoryException_initWithNSString_(JreStrcat("$@$", @"file '", dir, @"' exists but is not a directory"));
  IOSObjectArray *result = [dir listWithJavaIoFilenameFilter:create_OrgApacheLuceneStoreFSDirectory_1_init()];
  if (result == nil) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$@$", @"directory '", dir, @"' exists and is a directory, but cannot be listed: list() returned null"));
  return result;
}

jlong OrgApacheLuceneStoreFSDirectory_fileModifiedWithJavaIoFile_withNSString_(JavaIoFile *directory, NSString *name) {
  OrgApacheLuceneStoreFSDirectory_initialize();
  JavaIoFile *file = create_JavaIoFile_initWithJavaIoFile_withNSString_(directory, name);
  return [file lastModified];
}

IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneStoreFSDirectory__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreFSDirectory)

@implementation OrgApacheLuceneStoreFSDirectory_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreFSDirectory_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)acceptWithJavaIoFile:(JavaIoFile *)dir
                    withNSString:(NSString *)file {
  return ![create_JavaIoFile_initWithJavaIoFile_withNSString_(dir, file) isDirectory];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(acceptWithJavaIoFile:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "accept", "LJavaIoFile;LNSString;", "LOrgApacheLuceneStoreFSDirectory;", "listAllWithJavaIoFile:" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreFSDirectory_1 = { "", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 2, -1, 3, -1, -1 };
  return &_OrgApacheLuceneStoreFSDirectory_1;
}

@end

void OrgApacheLuceneStoreFSDirectory_1_init(OrgApacheLuceneStoreFSDirectory_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneStoreFSDirectory_1 *new_OrgApacheLuceneStoreFSDirectory_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreFSDirectory_1, init)
}

OrgApacheLuceneStoreFSDirectory_1 *create_OrgApacheLuceneStoreFSDirectory_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreFSDirectory_1, init)
}

@implementation OrgApacheLuceneStoreFSDirectory_FSIndexOutput

- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)parent
                                           withNSString:(NSString *)name {
  OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(self, parent, name);
  return self;
}

- (void)flushBufferWithByteArray:(IOSByteArray *)b
                         withInt:(jint)offset
                         withInt:(jint)size {
  [((JavaIoRandomAccessFile *) nil_chk(file_)) writeWithByteArray:b withInt:offset withInt:size];
}

- (void)close {
  [((OrgApacheLuceneStoreFSDirectory *) nil_chk(parent_)) onIndexOutputClosedWithOrgApacheLuceneStoreFSDirectory_FSIndexOutput:self];
  if (JreLoadVolatileBoolean(&isOpen_)) {
    jboolean success = false;
    @try {
      [super close];
      success = true;
    }
    @finally {
      JreAssignVolatileBoolean(&isOpen_, false);
      if (!success) {
        @try {
          [((JavaIoRandomAccessFile *) nil_chk(file_)) close];
        }
        @catch (NSException *t) {
        }
      }
      else {
        [((JavaIoRandomAccessFile *) nil_chk(file_)) close];
      }
    }
  }
}

- (void)seekWithLong:(jlong)pos {
  [super seekWithLong:pos];
  [((JavaIoRandomAccessFile *) nil_chk(file_)) seekWithLong:pos];
}

- (jlong)length {
  return [((JavaIoRandomAccessFile *) nil_chk(file_)) length];
}

- (void)setLengthWithLong:(jlong)length {
  [((JavaIoRandomAccessFile *) nil_chk(file_)) setLengthWithLong:length];
}

- (void)dealloc {
  RELEASE_(parent_);
  RELEASE_(name_);
  RELEASE_(file_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreFSDirectory:withNSString:);
  methods[1].selector = @selector(flushBufferWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(close);
  methods[3].selector = @selector(seekWithLong:);
  methods[4].selector = @selector(length);
  methods[5].selector = @selector(setLengthWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "parent_", "LOrgApacheLuceneStoreFSDirectory;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "file_", "LJavaIoRandomAccessFile;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isOpen_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreFSDirectory;LNSString;", "LJavaIoIOException;", "flushBuffer", "[BII", "seek", "J", "setLength", "LOrgApacheLuceneStoreFSDirectory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreFSDirectory_FSIndexOutput = { "FSIndexOutput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0xc, 6, 4, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreFSDirectory_FSIndexOutput;
}

@end

void OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(OrgApacheLuceneStoreFSDirectory_FSIndexOutput *self, OrgApacheLuceneStoreFSDirectory *parent, NSString *name) {
  OrgApacheLuceneStoreBufferedIndexOutput_init(self);
  JreStrongAssign(&self->parent_, parent);
  JreStrongAssign(&self->name_, name);
  JreStrongAssignAndConsume(&self->file_, new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(create_JavaIoFile_initWithJavaIoFile_withNSString_(((OrgApacheLuceneStoreFSDirectory *) nil_chk(parent))->directory_, name), @"rw"));
  JreAssignVolatileBoolean(&self->isOpen_, true);
}

OrgApacheLuceneStoreFSDirectory_FSIndexOutput *new_OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(OrgApacheLuceneStoreFSDirectory *parent, NSString *name) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, initWithOrgApacheLuceneStoreFSDirectory_withNSString_, parent, name)
}

OrgApacheLuceneStoreFSDirectory_FSIndexOutput *create_OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(OrgApacheLuceneStoreFSDirectory *parent, NSString *name) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, initWithOrgApacheLuceneStoreFSDirectory_withNSString_, parent, name)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreFSDirectory_FSIndexOutput)
