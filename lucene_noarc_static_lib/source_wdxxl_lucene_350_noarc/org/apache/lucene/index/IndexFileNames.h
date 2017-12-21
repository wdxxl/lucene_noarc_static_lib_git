//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/IndexFileNames.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFileNames")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexFileNames
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFileNames 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexFileNames 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexFileNames

#if !defined (OrgApacheLuceneIndexIndexFileNames_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexFileNames || defined(INCLUDE_OrgApacheLuceneIndexIndexFileNames))
#define OrgApacheLuceneIndexIndexFileNames_

@class IOSObjectArray;

@interface OrgApacheLuceneIndexIndexFileNames : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)fileNameFromGenerationWithNSString:(NSString *)base
                                    withNSString:(NSString *)ext
                                        withLong:(jlong)gen;

+ (jboolean)isDocStoreFileWithNSString:(NSString *)fileName;

+ (jboolean)isSeparateNormsFileWithNSString:(NSString *)filename;

+ (jboolean)matchesExtensionWithNSString:(NSString *)filename
                            withNSString:(NSString *)ext;

+ (NSString *)segmentFileNameWithNSString:(NSString *)segmentName
                             withNSString:(NSString *)ext;

+ (NSString *)stripSegmentNameWithNSString:(NSString *)filename;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexFileNames)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_SEGMENTS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_SEGMENTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, SEGMENTS, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_SEGMENTS_GEN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_SEGMENTS_GEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, SEGMENTS_GEN, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_DELETABLE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_DELETABLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, DELETABLE, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_NORMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_NORMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, NORMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_FREQ_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_FREQ_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, FREQ_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_PROX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_PROX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, PROX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_TERMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_TERMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, TERMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_TERMS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_TERMS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, TERMS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_FIELDS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_FIELDS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, FIELDS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_FIELDS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_FIELDS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, FIELDS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_VECTORS_FIELDS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_VECTORS_FIELDS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, VECTORS_FIELDS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_VECTORS_DOCUMENTS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_VECTORS_DOCUMENTS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, VECTORS_DOCUMENTS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_VECTORS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_VECTORS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, VECTORS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_COMPOUND_FILE_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, COMPOUND_FILE_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_COMPOUND_FILE_STORE_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_COMPOUND_FILE_STORE_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, COMPOUND_FILE_STORE_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_DELETES_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_DELETES_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, DELETES_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_FIELD_INFOS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_FIELD_INFOS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, FIELD_INFOS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_PLAIN_NORMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_PLAIN_NORMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, PLAIN_NORMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_SEPARATE_NORMS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_SEPARATE_NORMS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, SEPARATE_NORMS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneIndexIndexFileNames_get_GEN_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_GEN_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, GEN_EXTENSION, NSString *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_INDEX_EXTENSIONS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_INDEX_EXTENSIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, INDEX_EXTENSIONS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_INDEX_EXTENSIONS_IN_COMPOUND_FILE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_INDEX_EXTENSIONS_IN_COMPOUND_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, INDEX_EXTENSIONS_IN_COMPOUND_FILE, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_STORE_INDEX_EXTENSIONS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_STORE_INDEX_EXTENSIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, STORE_INDEX_EXTENSIONS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_NON_STORE_INDEX_EXTENSIONS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_NON_STORE_INDEX_EXTENSIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, NON_STORE_INDEX_EXTENSIONS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_COMPOUND_EXTENSIONS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_COMPOUND_EXTENSIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, COMPOUND_EXTENSIONS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_get_VECTOR_EXTENSIONS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexFileNames_VECTOR_EXTENSIONS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexFileNames, VECTOR_EXTENSIONS, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexFileNames_init(OrgApacheLuceneIndexIndexFileNames *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFileNames *new_OrgApacheLuceneIndexIndexFileNames_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexFileNames *create_OrgApacheLuceneIndexIndexFileNames_init();

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(NSString *base, NSString *ext, jlong gen);

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexIndexFileNames_isDocStoreFileWithNSString_(NSString *fileName);

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_(NSString *segmentName, NSString *ext);

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexIndexFileNames_matchesExtensionWithNSString_withNSString_(NSString *filename, NSString *ext);

FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(NSString *filename);

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexIndexFileNames_isSeparateNormsFileWithNSString_(NSString *filename);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexFileNames)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexFileNames")
