//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/SimpleFSLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory")
#ifdef RESTRICT_OrgApacheLuceneStoreSimpleFSLockFactory
#define INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreSimpleFSLockFactory

#if !defined (OrgApacheLuceneStoreSimpleFSLockFactory_) && (INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory || defined(INCLUDE_OrgApacheLuceneStoreSimpleFSLockFactory))
#define OrgApacheLuceneStoreSimpleFSLockFactory_

#define RESTRICT_OrgApacheLuceneStoreFSLockFactory 1
#define INCLUDE_OrgApacheLuceneStoreFSLockFactory 1
#include "org/apache/lucene/store/FSLockFactory.h"

@class JavaIoFile;
@class OrgApacheLuceneStoreLock;

@interface OrgApacheLuceneStoreSimpleFSLockFactory : OrgApacheLuceneStoreFSLockFactory

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaIoFile:(JavaIoFile *)lockDir;

- (instancetype)initWithNSString:(NSString *)lockDirName;

- (void)clearLockWithNSString:(NSString *)lockName;

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSLockFactory)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSLockFactory_init(OrgApacheLuceneStoreSimpleFSLockFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *new_OrgApacheLuceneStoreSimpleFSLockFactory_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *create_OrgApacheLuceneStoreSimpleFSLockFactory_init();

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSLockFactory_initWithJavaIoFile_(OrgApacheLuceneStoreSimpleFSLockFactory *self, JavaIoFile *lockDir);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *new_OrgApacheLuceneStoreSimpleFSLockFactory_initWithJavaIoFile_(JavaIoFile *lockDir) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *create_OrgApacheLuceneStoreSimpleFSLockFactory_initWithJavaIoFile_(JavaIoFile *lockDir);

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSLockFactory_initWithNSString_(OrgApacheLuceneStoreSimpleFSLockFactory *self, NSString *lockDirName);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *new_OrgApacheLuceneStoreSimpleFSLockFactory_initWithNSString_(NSString *lockDirName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *create_OrgApacheLuceneStoreSimpleFSLockFactory_initWithNSString_(NSString *lockDirName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSLockFactory)

#endif

#if !defined (OrgApacheLuceneStoreSimpleFSLock_) && (INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory || defined(INCLUDE_OrgApacheLuceneStoreSimpleFSLock))
#define OrgApacheLuceneStoreSimpleFSLock_

#define RESTRICT_OrgApacheLuceneStoreLock 1
#define INCLUDE_OrgApacheLuceneStoreLock 1
#include "org/apache/lucene/store/Lock.h"

@class JavaIoFile;

@interface OrgApacheLuceneStoreSimpleFSLock : OrgApacheLuceneStoreLock {
 @public
  JavaIoFile *lockFile_;
  JavaIoFile *lockDir_;
}

#pragma mark Public

- (instancetype)initWithJavaIoFile:(JavaIoFile *)lockDir
                      withNSString:(NSString *)lockFileName;

- (jboolean)isLocked;

- (jboolean)obtain;

- (void)release__;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSLock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSLock, lockFile_, JavaIoFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSLock, lockDir_, JavaIoFile *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSLock_initWithJavaIoFile_withNSString_(OrgApacheLuceneStoreSimpleFSLock *self, JavaIoFile *lockDir, NSString *lockFileName);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLock *new_OrgApacheLuceneStoreSimpleFSLock_initWithJavaIoFile_withNSString_(JavaIoFile *lockDir, NSString *lockFileName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLock *create_OrgApacheLuceneStoreSimpleFSLock_initWithJavaIoFile_withNSString_(JavaIoFile *lockDir, NSString *lockFileName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSLock)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreSimpleFSLockFactory")
