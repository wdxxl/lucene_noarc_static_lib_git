//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/Counter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCounter")
#ifdef RESTRICT_OrgApacheLuceneUtilCounter
#define INCLUDE_ALL_OrgApacheLuceneUtilCounter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCounter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCounter

#if !defined (OrgApacheLuceneUtilCounter_) && (INCLUDE_ALL_OrgApacheLuceneUtilCounter || defined(INCLUDE_OrgApacheLuceneUtilCounter))
#define OrgApacheLuceneUtilCounter_

@interface OrgApacheLuceneUtilCounter : NSObject

#pragma mark Public

- (instancetype)init;

- (jlong)addAndGetWithLong:(jlong)delta;

- (jlong)get;

+ (OrgApacheLuceneUtilCounter *)newCounter OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneUtilCounter *)newCounterWithBoolean:(jboolean)threadSafe OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCounter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilCounter_init(OrgApacheLuceneUtilCounter *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounter();

FOUNDATION_EXPORT OrgApacheLuceneUtilCounter *OrgApacheLuceneUtilCounter_newCounterWithBoolean_(jboolean threadSafe);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCounter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCounter")
