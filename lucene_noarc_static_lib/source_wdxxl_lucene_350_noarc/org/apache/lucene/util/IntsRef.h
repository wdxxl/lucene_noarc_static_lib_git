//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/IntsRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRef")
#ifdef RESTRICT_OrgApacheLuceneUtilIntsRef
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRef 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilIntsRef 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilIntsRef

#if !defined (OrgApacheLuceneUtilIntsRef_) && (INCLUDE_ALL_OrgApacheLuceneUtilIntsRef || defined(INCLUDE_OrgApacheLuceneUtilIntsRef))
#define OrgApacheLuceneUtilIntsRef_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class IOSIntArray;

@interface OrgApacheLuceneUtilIntsRef : NSObject < JavaLangComparable > {
 @public
  IOSIntArray *ints_;
  jint offset_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)capacity;

- (instancetype)initWithIntArray:(IOSIntArray *)ints
                         withInt:(jint)offset
                         withInt:(jint)length;

- (instancetype)initWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other;

- (id)java_clone;

- (jint)compareToWithId:(OrgApacheLuceneUtilIntsRef *)other;

- (void)copy__WithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (void)growWithInt:(jint)newLength;

- (NSUInteger)hash;

- (jboolean)intsEqualsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIntsRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIntsRef, ints_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_init(OrgApacheLuceneUtilIntsRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_init();

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_initWithInt_(OrgApacheLuceneUtilIntsRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilIntsRef *self, IOSIntArray *ints, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIntsRef_initWithOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilIntsRef *self, OrgApacheLuceneUtilIntsRef *other);

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilIntsRef *other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilIntsRef *other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIntsRef)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilIntsRef")
