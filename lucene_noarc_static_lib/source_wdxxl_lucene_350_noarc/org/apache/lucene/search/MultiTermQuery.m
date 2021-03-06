//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/MultiTermQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Float.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/ConstantScoreAutoRewrite.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ScoringRewrite.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/TopTermsRewrite.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$2();

@interface OrgApacheLuceneSearchMultiTermQuery_1 : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

- (id)readResolve;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_1)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQuery_1_init(OrgApacheLuceneSearchMultiTermQuery_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQuery_1 *new_OrgApacheLuceneSearchMultiTermQuery_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQuery_1 *create_OrgApacheLuceneSearchMultiTermQuery_1_init();

@interface OrgApacheLuceneSearchMultiTermQuery_2 : OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite

- (instancetype)init;

- (void)setTermCountCutoffWithInt:(jint)count;

- (void)setDocCountPercentWithDouble:(jdouble)percent;

- (id)readResolve;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMultiTermQuery_2)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiTermQuery_2_init(OrgApacheLuceneSearchMultiTermQuery_2 *self);

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQuery_2 *new_OrgApacheLuceneSearchMultiTermQuery_2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiTermQuery_2 *create_OrgApacheLuceneSearchMultiTermQuery_2_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchMultiTermQuery)

OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_FILTER_REWRITE;
OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_QUERY_REWRITE;
OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE;
OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT;

@implementation OrgApacheLuceneSearchMultiTermQuery

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMultiTermQuery_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getTotalNumberOfTerms {
  return numberOfTerms_;
}

- (void)clearTotalNumberOfTerms {
  numberOfTerms_ = 0;
}

- (void)incTotalNumberOfTermsWithInt:(jint)inc {
  numberOfTerms_ += inc;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return [((OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:self];
}

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getRewriteMethod {
  return rewriteMethod_;
}

- (void)setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method {
  JreStrongAssign(&rewriteMethod_, method);
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]);
  result = prime * result;
  result += ((jint) [((OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchMultiTermQuery *other = (OrgApacheLuceneSearchMultiTermQuery *) cast_chk(obj, [OrgApacheLuceneSearchMultiTermQuery class]);
  if (JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]) != JavaLangFloat_floatToIntBitsWithFloat_([other getBoost])) return false;
  if (![((OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *) nil_chk(rewriteMethod_)) isEqual:other->rewriteMethod_]) {
    return false;
  }
  return true;
}

- (void)dealloc {
  RELEASE_(rewriteMethod_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFilteredTermEnum;", 0x404, 0, 1, 2, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, 3, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 4, -1 },
    { NULL, "V", 0x4, 5, 6, -1, -1, 7, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x11, 8, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getEnumWithOrgApacheLuceneIndexIndexReader:);
  methods[2].selector = @selector(getTotalNumberOfTerms);
  methods[3].selector = @selector(clearTotalNumberOfTerms);
  methods[4].selector = @selector(incTotalNumberOfTermsWithInt:);
  methods[5].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[6].selector = @selector(getRewriteMethod);
  methods[7].selector = @selector(setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:);
  methods[8].selector = @selector(hash);
  methods[9].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "rewriteMethod_", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "numberOfTerms_", "I", .constantValue.asLong = 0, 0x80, -1, -1, -1, -1 },
    { "CONSTANT_SCORE_FILTER_REWRITE", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "SCORING_BOOLEAN_QUERY_REWRITE", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "CONSTANT_SCORE_AUTO_REWRITE_DEFAULT", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
  };
  static const void *ptrTable[] = { "getEnum", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", (void *)&OrgApacheLuceneSearchMultiTermQuery__Annotations$0, (void *)&OrgApacheLuceneSearchMultiTermQuery__Annotations$1, "incTotalNumberOfTerms", "I", (void *)&OrgApacheLuceneSearchMultiTermQuery__Annotations$2, "rewrite", "setRewriteMethod", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", "hashCode", "equals", "LNSObject;", &OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_FILTER_REWRITE, &OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_QUERY_REWRITE, &OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE, &OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT, "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;LOrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite;LOrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite;LOrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery = { "MultiTermQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 10, 6, -1, 18, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchMultiTermQuery class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_FILTER_REWRITE, new_OrgApacheLuceneSearchMultiTermQuery_1_init());
    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_SCORING_BOOLEAN_QUERY_REWRITE, JreLoadStatic(OrgApacheLuceneSearchScoringRewrite, SCORING_BOOLEAN_QUERY_REWRITE));
    JreStrongAssign(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE, JreLoadStatic(OrgApacheLuceneSearchScoringRewrite, CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT, new_OrgApacheLuceneSearchMultiTermQuery_2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchMultiTermQuery)
  }
}

@end

void OrgApacheLuceneSearchMultiTermQuery_init(OrgApacheLuceneSearchMultiTermQuery *self) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->rewriteMethod_, OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_AUTO_REWRITE_DEFAULT);
  self->numberOfTerms_ = 0;
}

IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchMultiTermQuery__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQuery)

@implementation OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "LOrgApacheLuceneSearchMultiTermQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_RewriteMethod = { "RewriteMethod", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x409, 2, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod)

@implementation OrgApacheLuceneSearchMultiTermQuery_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMultiTermQuery_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchQuery *result = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchFilter_(create_OrgApacheLuceneSearchMultiTermQueryWrapperFilter_initWithOrgApacheLuceneSearchMultiTermQuery_(query));
  [result setBoostWithFloat:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) getBoost]];
  return result;
}

- (id)readResolve {
  return JreLoadStatic(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_FILTER_REWRITE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  methods[2].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LOrgApacheLuceneSearchMultiTermQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_1;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_1_init(OrgApacheLuceneSearchMultiTermQuery_1 *self) {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(self);
}

OrgApacheLuceneSearchMultiTermQuery_1 *new_OrgApacheLuceneSearchMultiTermQuery_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQuery_1, init)
}

OrgApacheLuceneSearchMultiTermQuery_1 *create_OrgApacheLuceneSearchMultiTermQuery_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQuery_1, init)
}

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(self, size);
  return self;
}

- (jint)getMaxSize {
  return OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount();
}

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery {
  return create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(true);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  OrgApacheLuceneSearchTermQuery *tq = create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
  [tq setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(topLevel)) addWithOrgApacheLuceneSearchQuery:tq withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getMaxSize);
  methods[2].selector = @selector(getTopLevelQuery);
  methods[3].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "addClause", "LOrgApacheLuceneSearchBooleanQuery;LOrgApacheLuceneIndexTerm;F", "LOrgApacheLuceneSearchMultiTermQuery;", "Lorg/apache/lucene/search/TopTermsRewrite<Lorg/apache/lucene/search/BooleanQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite = { "TopTermsScoringBooleanQueryRewrite", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x19, 4, 0, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *self, jint size) {
  OrgApacheLuceneSearchTopTermsRewrite_initWithInt_(self, size);
}

OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *new_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite, initWithInt_, size)
}

OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite *create_OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQuery_TopTermsScoringBooleanQueryRewrite)

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(self, size);
  return self;
}

- (jint)getMaxSize {
  return OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount();
}

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery {
  return create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(true);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  OrgApacheLuceneSearchQuery *q = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term));
  [q setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(topLevel)) addWithOrgApacheLuceneSearchQuery:q withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getMaxSize);
  methods[2].selector = @selector(getTopLevelQuery);
  methods[3].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "addClause", "LOrgApacheLuceneSearchBooleanQuery;LOrgApacheLuceneIndexTerm;F", "LOrgApacheLuceneSearchMultiTermQuery;", "Lorg/apache/lucene/search/TopTermsRewrite<Lorg/apache/lucene/search/BooleanQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite = { "TopTermsBoostOnlyBooleanQueryRewrite", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x19, 4, 0, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *self, jint size) {
  OrgApacheLuceneSearchTopTermsRewrite_initWithInt_(self, size);
}

OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *new_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite, initWithInt_, size)
}

OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite *create_OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQuery_TopTermsBoostOnlyBooleanQueryRewrite)

@implementation OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchMultiTermQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite = { "ConstantScoreAutoRewrite", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x9, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *self) {
  OrgApacheLuceneSearchConstantScoreAutoRewrite_init(self);
}

OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *new_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite, init)
}

OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite *create_OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite)

@implementation OrgApacheLuceneSearchMultiTermQuery_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchMultiTermQuery_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setTermCountCutoffWithInt:(jint)count {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"Please create a private instance");
}

- (void)setDocCountPercentWithDouble:(jdouble)percent {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"Please create a private instance");
}

- (id)readResolve {
  return JreLoadStatic(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_AUTO_REWRITE_DEFAULT);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setTermCountCutoffWithInt:);
  methods[2].selector = @selector(setDocCountPercentWithDouble:);
  methods[3].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setTermCountCutoff", "I", "setDocCountPercent", "D", "LOrgApacheLuceneSearchMultiTermQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiTermQuery_2 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 4, 0, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiTermQuery_2;
}

@end

void OrgApacheLuceneSearchMultiTermQuery_2_init(OrgApacheLuceneSearchMultiTermQuery_2 *self) {
  OrgApacheLuceneSearchMultiTermQuery_ConstantScoreAutoRewrite_init(self);
}

OrgApacheLuceneSearchMultiTermQuery_2 *new_OrgApacheLuceneSearchMultiTermQuery_2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiTermQuery_2, init)
}

OrgApacheLuceneSearchMultiTermQuery_2 *create_OrgApacheLuceneSearchMultiTermQuery_2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiTermQuery_2, init)
}
