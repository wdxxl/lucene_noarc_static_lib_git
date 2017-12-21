//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/MapOfSets.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilMapOfSets")
#ifdef RESTRICT_OrgApacheLuceneUtilMapOfSets
#define INCLUDE_ALL_OrgApacheLuceneUtilMapOfSets 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilMapOfSets 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilMapOfSets

#if !defined (OrgApacheLuceneUtilMapOfSets_) && (INCLUDE_ALL_OrgApacheLuceneUtilMapOfSets || defined(INCLUDE_OrgApacheLuceneUtilMapOfSets))
#define OrgApacheLuceneUtilMapOfSets_

@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneUtilMapOfSets : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)m;

- (id<JavaUtilMap>)getMap;

- (jint)putWithId:(id)key
           withId:(id)val;

- (jint)putAllWithId:(id)key
withJavaUtilCollection:(id<JavaUtilCollection>)vals;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilMapOfSets)

FOUNDATION_EXPORT void OrgApacheLuceneUtilMapOfSets_initWithJavaUtilMap_(OrgApacheLuceneUtilMapOfSets *self, id<JavaUtilMap> m);

FOUNDATION_EXPORT OrgApacheLuceneUtilMapOfSets *new_OrgApacheLuceneUtilMapOfSets_initWithJavaUtilMap_(id<JavaUtilMap> m) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilMapOfSets *create_OrgApacheLuceneUtilMapOfSets_initWithJavaUtilMap_(id<JavaUtilMap> m);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilMapOfSets)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilMapOfSets")
