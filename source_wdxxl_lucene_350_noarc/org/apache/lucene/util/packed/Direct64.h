//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/packed/Direct64.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect64")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedDirect64
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect64 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect64 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedDirect64

#if !defined (OrgApacheLuceneUtilPackedDirect64_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect64 || defined(INCLUDE_OrgApacheLuceneUtilPackedDirect64))
#define OrgApacheLuceneUtilPackedDirect64_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_ReaderImpl 1
#include "org/apache/lucene/util/packed/PackedInts.h"

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Mutable 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSLongArray;
@class OrgApacheLuceneStoreDataInput;

@interface OrgApacheLuceneUtilPackedDirect64 : OrgApacheLuceneUtilPackedPackedInts_ReaderImpl < OrgApacheLuceneUtilPackedPackedInts_Mutable >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount;

- (instancetype)initWithInt:(jint)valueCount;

- (instancetype)initWithLongArray:(IOSLongArray *)values;

- (void)clear;

- (jlong)getWithInt:(jint)index;

- (IOSLongArray *)getArray;

- (jboolean)hasArray;

- (jlong)ramBytesUsed;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirect64)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect64_initWithInt_(OrgApacheLuceneUtilPackedDirect64 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *create_OrgApacheLuceneUtilPackedDirect64_initWithInt_(jint valueCount);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect64_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneUtilPackedDirect64 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *create_OrgApacheLuceneUtilPackedDirect64_initWithOrgApacheLuceneStoreDataInput_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirect64_initWithLongArray_(OrgApacheLuceneUtilPackedDirect64 *self, IOSLongArray *values);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initWithLongArray_(IOSLongArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirect64 *create_OrgApacheLuceneUtilPackedDirect64_initWithLongArray_(IOSLongArray *values);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirect64)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedDirect64")
