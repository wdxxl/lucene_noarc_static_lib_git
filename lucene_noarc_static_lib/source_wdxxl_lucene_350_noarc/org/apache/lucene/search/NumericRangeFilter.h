//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/NumericRangeFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchNumericRangeFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchNumericRangeFilter

#if !defined (OrgApacheLuceneSearchNumericRangeFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeFilter || defined(INCLUDE_OrgApacheLuceneSearchNumericRangeFilter))
#define OrgApacheLuceneSearchNumericRangeFilter_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQueryWrapperFilter 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQueryWrapperFilter 1
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"

@class JavaLangDouble;
@class JavaLangFloat;
@class JavaLangInteger;
@class JavaLangLong;

@interface OrgApacheLuceneSearchNumericRangeFilter : OrgApacheLuceneSearchMultiTermQueryWrapperFilter

#pragma mark Public

- (NSString *)getField;

- (NSNumber *)getMax;

- (NSNumber *)getMin;

- (jint)getPrecisionStep;

- (jboolean)includesMax;

- (jboolean)includesMin;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newDoubleRangeWithNSString:(NSString *)field
                                                     withJavaLangDouble:(JavaLangDouble *)min
                                                     withJavaLangDouble:(JavaLangDouble *)max
                                                            withBoolean:(jboolean)minInclusive
                                                            withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newDoubleRangeWithNSString:(NSString *)field
                                                                withInt:(jint)precisionStep
                                                     withJavaLangDouble:(JavaLangDouble *)min
                                                     withJavaLangDouble:(JavaLangDouble *)max
                                                            withBoolean:(jboolean)minInclusive
                                                            withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newFloatRangeWithNSString:(NSString *)field
                                                     withJavaLangFloat:(JavaLangFloat *)min
                                                     withJavaLangFloat:(JavaLangFloat *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newFloatRangeWithNSString:(NSString *)field
                                                               withInt:(jint)precisionStep
                                                     withJavaLangFloat:(JavaLangFloat *)min
                                                     withJavaLangFloat:(JavaLangFloat *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newIntRangeWithNSString:(NSString *)field
                                                             withInt:(jint)precisionStep
                                                 withJavaLangInteger:(JavaLangInteger *)min
                                                 withJavaLangInteger:(JavaLangInteger *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newIntRangeWithNSString:(NSString *)field
                                                 withJavaLangInteger:(JavaLangInteger *)min
                                                 withJavaLangInteger:(JavaLangInteger *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newLongRangeWithNSString:(NSString *)field
                                                              withInt:(jint)precisionStep
                                                     withJavaLangLong:(JavaLangLong *)min
                                                     withJavaLangLong:(JavaLangLong *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneSearchNumericRangeFilter *)newLongRangeWithNSString:(NSString *)field
                                                     withJavaLangLong:(JavaLangLong *)min
                                                     withJavaLangLong:(JavaLangLong *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchNumericRangeFilter)

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive);

FOUNDATION_EXPORT OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchNumericRangeFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchNumericRangeFilter")
