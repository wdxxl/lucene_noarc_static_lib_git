//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermEnum")
#ifdef RESTRICT_OrgApacheLuceneIndexTermEnum
#define INCLUDE_ALL_OrgApacheLuceneIndexTermEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermEnum

#if !defined (OrgApacheLuceneIndexTermEnum_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermEnum || defined(INCLUDE_OrgApacheLuceneIndexTermEnum))
#define OrgApacheLuceneIndexTermEnum_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexTerm;

@interface OrgApacheLuceneIndexTermEnum : NSObject < JavaIoCloseable >

#pragma mark Public

- (instancetype)init;

- (void)close;

- (jint)docFreq;

- (jboolean)next;

- (OrgApacheLuceneIndexTerm *)term;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermEnum)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermEnum_init(OrgApacheLuceneIndexTermEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermEnum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermEnum")
