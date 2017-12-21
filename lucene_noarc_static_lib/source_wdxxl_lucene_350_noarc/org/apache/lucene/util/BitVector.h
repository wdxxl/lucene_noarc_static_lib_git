//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/BitVector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBitVector")
#ifdef RESTRICT_OrgApacheLuceneUtilBitVector
#define INCLUDE_ALL_OrgApacheLuceneUtilBitVector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBitVector 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBitVector

#if !defined (OrgApacheLuceneUtilBitVector_) && (INCLUDE_ALL_OrgApacheLuceneUtilBitVector || defined(INCLUDE_OrgApacheLuceneUtilBitVector))
#define OrgApacheLuceneUtilBitVector_

#define RESTRICT_OrgApacheLuceneUtilBits 1
#define INCLUDE_OrgApacheLuceneUtilBits 1
#include "org/apache/lucene/util/Bits.h"

@class IOSByteArray;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneUtilBitVector : NSObject < NSCopying, OrgApacheLuceneUtilBits >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                                         withNSString:(NSString *)name;

- (instancetype)initWithInt:(jint)n;

- (void)clearWithInt:(jint)bit;

- (id)java_clone;

- (jint)count;

- (jboolean)getWithInt:(jint)bit;

- (jboolean)getAndSetWithInt:(jint)bit;

- (jint)getRecomputedCount;

- (jint)length;

- (void)setWithInt:(jint)bit;

- (jint)size;

- (void)writeWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                                  withNSString:(NSString *)name;

#pragma mark Package-Private

- (instancetype)initWithByteArray:(IOSByteArray *)bits
                          withInt:(jint)size;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilBitVector)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBitVector_initWithInt_(OrgApacheLuceneUtilBitVector *self, jint n);

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *new_OrgApacheLuceneUtilBitVector_initWithInt_(jint n) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *create_OrgApacheLuceneUtilBitVector_initWithInt_(jint n);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBitVector_initWithByteArray_withInt_(OrgApacheLuceneUtilBitVector *self, IOSByteArray *bits, jint size);

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *new_OrgApacheLuceneUtilBitVector_initWithByteArray_withInt_(IOSByteArray *bits, jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *create_OrgApacheLuceneUtilBitVector_initWithByteArray_withInt_(IOSByteArray *bits, jint size);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBitVector_initWithOrgApacheLuceneStoreDirectory_withNSString_(OrgApacheLuceneUtilBitVector *self, OrgApacheLuceneStoreDirectory *d, NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *new_OrgApacheLuceneUtilBitVector_initWithOrgApacheLuceneStoreDirectory_withNSString_(OrgApacheLuceneStoreDirectory *d, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBitVector *create_OrgApacheLuceneUtilBitVector_initWithOrgApacheLuceneStoreDirectory_withNSString_(OrgApacheLuceneStoreDirectory *d, NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBitVector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBitVector")
