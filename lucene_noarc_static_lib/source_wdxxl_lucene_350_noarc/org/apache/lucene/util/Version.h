//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/Version.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilVersion")
#ifdef RESTRICT_OrgApacheLuceneUtilVersion
#define INCLUDE_ALL_OrgApacheLuceneUtilVersion 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilVersion 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilVersion

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilVersion_) && (INCLUDE_ALL_OrgApacheLuceneUtilVersion || defined(INCLUDE_OrgApacheLuceneUtilVersion))
#define OrgApacheLuceneUtilVersion_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneUtilVersion_Enum) {
  OrgApacheLuceneUtilVersion_Enum_LUCENE_20 = 0,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_21 = 1,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_22 = 2,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_23 = 3,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_24 = 4,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_29 = 5,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_30 = 6,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_31 = 7,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_32 = 8,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_33 = 9,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_34 = 10,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_35 = 11,
  OrgApacheLuceneUtilVersion_Enum_LUCENE_CURRENT = 12,
};

@interface OrgApacheLuceneUtilVersion : JavaLangEnum < NSCopying >

#pragma mark Public

- (jboolean)onOrAfterWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)other;

+ (OrgApacheLuceneUtilVersion *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilVersion)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_values_[];

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_20();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_20)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_21();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_21)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_22();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_22)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_23();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_23)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_24();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_24)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_29();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_29)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_30();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_30)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_31();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_31)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_32();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_32)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_33();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_33)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_34();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_34)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_35();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_35)

inline OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_get_LUCENE_CURRENT();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneUtilVersion, LUCENE_CURRENT)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneUtilVersion_values();

FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilVersion)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilVersion")
