//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/store/Lock.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLock")
#ifdef RESTRICT_OrgApacheLuceneStoreLock
#define INCLUDE_ALL_OrgApacheLuceneStoreLock 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLock 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLock

#if !defined (OrgApacheLuceneStoreLock_) && (INCLUDE_ALL_OrgApacheLuceneStoreLock || defined(INCLUDE_OrgApacheLuceneStoreLock))
#define OrgApacheLuceneStoreLock_

@interface OrgApacheLuceneStoreLock : NSObject {
 @public
  NSException *failureReason_;
}

#pragma mark Public

- (instancetype)init;

- (jboolean)isLocked;

- (jboolean)obtain;

- (jboolean)obtainWithLong:(jlong)lockWaitTimeout;

- (void)release__;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreLock, failureReason_, NSException *)

inline jlong OrgApacheLuceneStoreLock_get_LOCK_POLL_INTERVAL();
inline jlong OrgApacheLuceneStoreLock_set_LOCK_POLL_INTERVAL(jlong value);
inline jlong *OrgApacheLuceneStoreLock_getRef_LOCK_POLL_INTERVAL();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneStoreLock_LOCK_POLL_INTERVAL;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneStoreLock, LOCK_POLL_INTERVAL, jlong)

inline jlong OrgApacheLuceneStoreLock_get_LOCK_OBTAIN_WAIT_FOREVER();
#define OrgApacheLuceneStoreLock_LOCK_OBTAIN_WAIT_FOREVER -1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreLock, LOCK_OBTAIN_WAIT_FOREVER, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLock_init(OrgApacheLuceneStoreLock *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLock)

#endif

#if !defined (OrgApacheLuceneStoreLock_With_) && (INCLUDE_ALL_OrgApacheLuceneStoreLock || defined(INCLUDE_OrgApacheLuceneStoreLock_With))
#define OrgApacheLuceneStoreLock_With_

@class OrgApacheLuceneStoreLock;

@interface OrgApacheLuceneStoreLock_With : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreLock:(OrgApacheLuceneStoreLock *)lock
                                        withLong:(jlong)lockWaitTimeout;

- (id)run;

#pragma mark Protected

- (id)doBody;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLock_With)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLock_With_initWithOrgApacheLuceneStoreLock_withLong_(OrgApacheLuceneStoreLock_With *self, OrgApacheLuceneStoreLock *lock, jlong lockWaitTimeout);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLock_With)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLock")
