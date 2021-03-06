//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/TermInfosReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReader")
#ifdef RESTRICT_OrgApacheLuceneIndexTermInfosReader
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermInfosReader

#if !defined (OrgApacheLuceneIndexTermInfosReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReader || defined(INCLUDE_OrgApacheLuceneIndexTermInfosReader))
#define OrgApacheLuceneIndexTermInfosReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexSegmentTermEnum;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermInfo;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneIndexTermInfosReader : NSObject < JavaIoCloseable >

#pragma mark Public

- (void)close;

- (jint)getMaxSkipLevels;

- (jint)getSkipInterval;

- (OrgApacheLuceneIndexSegmentTermEnum *)terms;

- (OrgApacheLuceneIndexSegmentTermEnum *)termsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                         withNSString:(NSString *)seg
                   withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                              withInt:(jint)readBufferSize
                                              withInt:(jint)indexDivisor;

- (OrgApacheLuceneIndexTermInfo *)getWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (jlong)getPositionWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (jlong)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermInfosReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermInfosReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_(OrgApacheLuceneIndexTermInfosReader *self, OrgApacheLuceneStoreDirectory *dir, NSString *seg, OrgApacheLuceneIndexFieldInfos *fis, jint readBufferSize, jint indexDivisor);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosReader *new_OrgApacheLuceneIndexTermInfosReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_(OrgApacheLuceneStoreDirectory *dir, NSString *seg, OrgApacheLuceneIndexFieldInfos *fis, jint readBufferSize, jint indexDivisor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermInfosReader *create_OrgApacheLuceneIndexTermInfosReader_initWithOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_(OrgApacheLuceneStoreDirectory *dir, NSString *seg, OrgApacheLuceneIndexFieldInfos *fis, jint readBufferSize, jint indexDivisor);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermInfosReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermInfosReader")
