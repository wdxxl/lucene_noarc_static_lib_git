//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/fst/NoOutputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstNoOutputs")
#ifdef RESTRICT_OrgApacheLuceneUtilFstNoOutputs
#define INCLUDE_ALL_OrgApacheLuceneUtilFstNoOutputs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstNoOutputs 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstNoOutputs

#if !defined (OrgApacheLuceneUtilFstNoOutputs_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstNoOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstNoOutputs))
#define OrgApacheLuceneUtilFstNoOutputs_

#define RESTRICT_OrgApacheLuceneUtilFstOutputs 1
#define INCLUDE_OrgApacheLuceneUtilFstOutputs 1
#include "org/apache/lucene/util/fst/Outputs.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilFstNoOutputs : OrgApacheLuceneUtilFstOutputs

#pragma mark Public

- (id)addWithId:(id)prefix
         withId:(id)output;

- (id)commonWithId:(id)output1
            withId:(id)output2;

- (id)getNoOutput;

+ (OrgApacheLuceneUtilFstNoOutputs *)getSingleton;

- (NSString *)outputToStringWithId:(id)output;

- (id)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (id)subtractWithId:(id)output
              withId:(id)inc;

- (void)writeWithId:(id)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilFstNoOutputs)

inline id OrgApacheLuceneUtilFstNoOutputs_get_NO_OUTPUT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id OrgApacheLuceneUtilFstNoOutputs_NO_OUTPUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilFstNoOutputs, NO_OUTPUT, id)

FOUNDATION_EXPORT OrgApacheLuceneUtilFstNoOutputs *OrgApacheLuceneUtilFstNoOutputs_getSingleton();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstNoOutputs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstNoOutputs")
