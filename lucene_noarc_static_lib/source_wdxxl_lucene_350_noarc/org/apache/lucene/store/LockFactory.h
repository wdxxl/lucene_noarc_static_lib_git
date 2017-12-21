//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/LockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockFactory")
#ifdef RESTRICT_OrgApacheLuceneStoreLockFactory
#define INCLUDE_ALL_OrgApacheLuceneStoreLockFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLockFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLockFactory

#if !defined (OrgApacheLuceneStoreLockFactory_) && (INCLUDE_ALL_OrgApacheLuceneStoreLockFactory || defined(INCLUDE_OrgApacheLuceneStoreLockFactory))
#define OrgApacheLuceneStoreLockFactory_

@class OrgApacheLuceneStoreLock;

@interface OrgApacheLuceneStoreLockFactory : NSObject {
 @public
  NSString *lockPrefix_;
}

#pragma mark Public

- (instancetype)init;

- (void)clearLockWithNSString:(NSString *)lockName;

- (NSString *)getLockPrefix;

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName;

- (void)setLockPrefixWithNSString:(NSString *)lockPrefix;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLockFactory, lockPrefix_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockFactory_init(OrgApacheLuceneStoreLockFactory *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLockFactory")
