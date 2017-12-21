//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/IndexableBinaryStringTools.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools")
#ifdef RESTRICT_OrgApacheLuceneUtilIndexableBinaryStringTools
#define INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilIndexableBinaryStringTools

#if !defined (OrgApacheLuceneUtilIndexableBinaryStringTools_) && (INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools || defined(INCLUDE_OrgApacheLuceneUtilIndexableBinaryStringTools))
#define OrgApacheLuceneUtilIndexableBinaryStringTools_

@class IOSByteArray;
@class IOSCharArray;
@class JavaNioByteBuffer;
@class JavaNioCharBuffer;

@interface OrgApacheLuceneUtilIndexableBinaryStringTools : NSObject

#pragma mark Public

+ (void)decodeWithCharArray:(IOSCharArray *)inputArray
                    withInt:(jint)inputOffset
                    withInt:(jint)inputLength
              withByteArray:(IOSByteArray *)outputArray
                    withInt:(jint)outputOffset
                    withInt:(jint)outputLength;

+ (JavaNioByteBuffer *)decodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)input;

+ (void)decodeWithJavaNioCharBuffer:(JavaNioCharBuffer *)input
              withJavaNioByteBuffer:(JavaNioByteBuffer *)output;

+ (void)encodeWithByteArray:(IOSByteArray *)inputArray
                    withInt:(jint)inputOffset
                    withInt:(jint)inputLength
              withCharArray:(IOSCharArray *)outputArray
                    withInt:(jint)outputOffset
                    withInt:(jint)outputLength;

+ (JavaNioCharBuffer *)encodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)input;

+ (void)encodeWithJavaNioByteBuffer:(JavaNioByteBuffer *)input
              withJavaNioCharBuffer:(JavaNioCharBuffer *)output;

+ (jint)getDecodedLengthWithCharArray:(IOSCharArray *)encoded
                              withInt:(jint)offset
                              withInt:(jint)length;

+ (jint)getDecodedLengthWithJavaNioCharBuffer:(JavaNioCharBuffer *)encoded;

+ (jint)getEncodedLengthWithByteArray:(IOSByteArray *)inputArray
                              withInt:(jint)inputOffset
                              withInt:(jint)inputLength;

+ (jint)getEncodedLengthWithJavaNioByteBuffer:(JavaNioByteBuffer *)original;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilIndexableBinaryStringTools)

FOUNDATION_EXPORT jint OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithJavaNioByteBuffer_(JavaNioByteBuffer *original);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilIndexableBinaryStringTools_getEncodedLengthWithByteArray_withInt_withInt_(IOSByteArray *inputArray, jint inputOffset, jint inputLength);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithJavaNioCharBuffer_(JavaNioCharBuffer *encoded);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilIndexableBinaryStringTools_getDecodedLengthWithCharArray_withInt_withInt_(IOSCharArray *encoded, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_withJavaNioCharBuffer_(JavaNioByteBuffer *input, JavaNioCharBuffer *output);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithByteArray_withInt_withInt_withCharArray_withInt_withInt_(IOSByteArray *inputArray, jint inputOffset, jint inputLength, IOSCharArray *outputArray, jint outputOffset, jint outputLength);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_withJavaNioByteBuffer_(JavaNioCharBuffer *input, JavaNioByteBuffer *output);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithCharArray_withInt_withInt_withByteArray_withInt_withInt_(IOSCharArray *inputArray, jint inputOffset, jint inputLength, IOSByteArray *outputArray, jint outputOffset, jint outputLength);

FOUNDATION_EXPORT JavaNioByteBuffer *OrgApacheLuceneUtilIndexableBinaryStringTools_decodeWithJavaNioCharBuffer_(JavaNioCharBuffer *input);

FOUNDATION_EXPORT JavaNioCharBuffer *OrgApacheLuceneUtilIndexableBinaryStringTools_encodeWithJavaNioByteBuffer_(JavaNioByteBuffer *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIndexableBinaryStringTools)

#endif

#if !defined (OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_) && (INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools || defined(INCLUDE_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase))
#define OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_

@interface OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase : NSObject {
 @public
  jint numBytes_;
  jint initialShift_;
  jint middleShift_;
  jint finalShift_;
  jint advanceBytes_;
  jshort middleMask_;
  jshort finalMask_;
}

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)initialShift
                    withInt:(jint)finalShift;

- (instancetype)initWithInt:(jint)initialShift
                    withInt:(jint)middleShift
                    withInt:(jint)finalShift;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase)

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *self, jint initialShift, jint middleShift, jint finalShift);

FOUNDATION_EXPORT OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *new_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(jint initialShift, jint middleShift, jint finalShift) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_withInt_(jint initialShift, jint middleShift, jint finalShift);

FOUNDATION_EXPORT void OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *self, jint initialShift, jint finalShift);

FOUNDATION_EXPORT OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *new_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(jint initialShift, jint finalShift) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase *create_OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase_initWithInt_withInt_(jint initialShift, jint finalShift);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIndexableBinaryStringTools_CodingCase)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilIndexableBinaryStringTools")
