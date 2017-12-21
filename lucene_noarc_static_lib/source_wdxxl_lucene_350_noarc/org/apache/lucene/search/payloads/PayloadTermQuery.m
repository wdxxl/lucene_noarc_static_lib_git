//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/payloads/PayloadTermQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermPositions.h"
#include "org/apache/lucene/search/ComplexExplanation.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Searcher.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadTermQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanScorer.h"
#include "org/apache/lucene/search/spans/SpanTermQuery.h"
#include "org/apache/lucene/search/spans/SpanWeight.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/search/spans/TermSpans.h"

@interface OrgApacheLuceneSearchPayloadsPayloadTermQuery () {
 @public
  jboolean includeSpanScore_;
}

@end

@interface OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadTermQuery *this$0_;
}

@end

@interface OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer () {
 @public
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *this$0_;
}

@end

@implementation OrgApacheLuceneSearchPayloadsPayloadTermQuery

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_(self, term, function);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
withOrgApacheLuceneSearchPayloadsPayloadFunction:(OrgApacheLuceneSearchPayloadsPayloadFunction *)function
                                     withBoolean:(jboolean)includeSpanScore {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_(self, term, function, includeSpanScore);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  return create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_(self, self, searcher);
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((function_ == nil) ? 0 : ((jint) [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(function_)) hash]));
  result = prime * result + (includeSpanScore_ ? 1231 : 1237);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self java_getClass] != [nil_chk(obj) java_getClass]) return false;
  OrgApacheLuceneSearchPayloadsPayloadTermQuery *other = (OrgApacheLuceneSearchPayloadsPayloadTermQuery *) cast_chk(obj, [OrgApacheLuceneSearchPayloadsPayloadTermQuery class]);
  if (function_ == nil) {
    if (other->function_ != nil) return false;
  }
  else if (![function_ isEqual:other->function_]) return false;
  if (includeSpanScore_ != other->includeSpanScore_) return false;
  return true;
}

- (void)dealloc {
  RELEASE_(function_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchPayloadsPayloadFunction:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchPayloadsPayloadFunction:withBoolean:);
  methods[2].selector = @selector(createWeightWithOrgApacheLuceneSearchSearcher:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "function_", "LOrgApacheLuceneSearchPayloadsPayloadFunction;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "includeSpanScore_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTerm;LOrgApacheLuceneSearchPayloadsPayloadFunction;", "LOrgApacheLuceneIndexTerm;LOrgApacheLuceneSearchPayloadsPayloadFunction;Z", "createWeight", "LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "hashCode", "equals", "LNSObject;", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadTermQuery = { "PayloadTermQuery", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, 8, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadTermQuery;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneSearchPayloadsPayloadTermQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_(self, term, function, true);
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_, term, function)
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery *create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_, term, function)
}

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_(OrgApacheLuceneSearchPayloadsPayloadTermQuery *self, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function, jboolean includeSpanScore) {
  OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  JreStrongAssign(&self->function_, function);
  self->includeSpanScore_ = includeSpanScore;
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function, jboolean includeSpanScore) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_, term, function, includeSpanScore)
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery *create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_(OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchPayloadsPayloadFunction *function, jboolean includeSpanScore) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchPayloadsPayloadFunction_withBoolean_, term, function, includeSpanScore)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadTermQuery)

@implementation OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery:(OrgApacheLuceneSearchPayloadsPayloadTermQuery *)outer$
                    withOrgApacheLuceneSearchPayloadsPayloadTermQuery:(OrgApacheLuceneSearchPayloadsPayloadTermQuery *)query
                                    withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_(self, outer$, query, searcher);
  return self;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                               withBoolean:(jboolean)scoreDocsInOrder
                                                               withBoolean:(jboolean)topScorer {
  return create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, (OrgApacheLuceneSearchSpansTermSpans *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(query_)) getSpansWithOrgApacheLuceneIndexIndexReader:reader], [OrgApacheLuceneSearchSpansTermSpans class]), self, similarity_, [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) normsWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(query_)) getField]]);
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                         withInt:(jint)doc {
  if (this$0_->includeSpanScore_) {
    return [super explainWithOrgApacheLuceneIndexIndexReader:reader withInt:doc];
  }
  else {
    OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *scorer = (OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *) cast_chk([self scorerWithOrgApacheLuceneIndexIndexReader:reader withBoolean:true withBoolean:false], [OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer class]);
    return [((OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *) nil_chk(scorer)) explainWithInt:doc];
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 4, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery:withOrgApacheLuceneSearchPayloadsPayloadTermQuery:withOrgApacheLuceneSearchSearcher:);
  methods[1].selector = @selector(scorerWithOrgApacheLuceneIndexIndexReader:withBoolean:withBoolean:);
  methods[2].selector = @selector(explainWithOrgApacheLuceneIndexIndexReader:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchPayloadsPayloadTermQuery;LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "scorer", "LOrgApacheLuceneIndexIndexReader;ZZ", "explain", "LOrgApacheLuceneIndexIndexReader;I", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery;", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight = { "PayloadTermWeight", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x4, 3, 1, 6, 7, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *self, OrgApacheLuceneSearchPayloadsPayloadTermQuery *outer$, OrgApacheLuceneSearchPayloadsPayloadTermQuery *query, OrgApacheLuceneSearchSearcher *searcher) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanWeight_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSearcher_(self, query, searcher);
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPayloadsPayloadTermQuery *outer$, OrgApacheLuceneSearchPayloadsPayloadTermQuery *query, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight, initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_, outer$, query, searcher)
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPayloadsPayloadTermQuery *outer$, OrgApacheLuceneSearchPayloadsPayloadTermQuery *query, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight, initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchPayloadsPayloadTermQuery_withOrgApacheLuceneSearchSearcher_, outer$, query, searcher)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight)

@implementation OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer

- (instancetype)initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight:(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *)outer$
                                                withOrgApacheLuceneSearchSpansTermSpans:(OrgApacheLuceneSearchSpansTermSpans *)spans
                                                        withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                                    withOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity
                                                                          withByteArray:(IOSByteArray *)norms {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, outer$, spans, weight, similarity, norms);
  return self;
}

- (jboolean)setFreqCurrentDoc {
  if (!more_) {
    return false;
  }
  doc_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) doc];
  freq_ = 0.0f;
  payloadScore_ = 0;
  payloadsSeen_ = 0;
  OrgApacheLuceneSearchSimilarity *similarity1 = [self getSimilarity];
  while (more_ && doc_ == [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) doc]) {
    jint matchLength = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) end] - [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) start];
    JrePlusAssignFloatF(&freq_, [((OrgApacheLuceneSearchSimilarity *) nil_chk(similarity1)) sloppyFreqWithInt:matchLength]);
    [self processPayloadWithOrgApacheLuceneSearchSimilarity:similarity1];
    more_ = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) next];
  }
  return more_ || (freq_ != 0);
}

- (void)processPayloadWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity {
  if ([((id<OrgApacheLuceneIndexTermPositions>) nil_chk(positions_)) isPayloadAvailable]) {
    JreStrongAssign(&payload_, [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(positions_)) getPayloadWithByteArray:payload_ withInt:0]);
    payloadScore_ = [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->this$0_->function_)) currentScoreWithInt:doc_ withNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(this$0_->this$0_->term_)) field] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) start] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) end] withInt:payloadsSeen_ withFloat:payloadScore_ withFloat:[((OrgApacheLuceneSearchSimilarity *) nil_chk(similarity)) scorePayloadWithInt:doc_ withNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(this$0_->this$0_->term_)) field] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) start] withInt:[((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans_)) end] withByteArray:payload_ withInt:0 withInt:[((id<OrgApacheLuceneIndexTermPositions>) nil_chk(positions_)) getPayloadLength]]];
    payloadsSeen_++;
  }
  else {
  }
}

- (jfloat)score {
  return this$0_->this$0_->includeSpanScore_ ? [self getSpanScore] * [self getPayloadScore] : [self getPayloadScore];
}

- (jfloat)getSpanScore {
  return [super score];
}

- (jfloat)getPayloadScore {
  return [((OrgApacheLuceneSearchPayloadsPayloadFunction *) nil_chk(this$0_->this$0_->function_)) docScoreWithInt:doc_ withNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(this$0_->this$0_->term_)) field] withInt:payloadsSeen_ withFloat:payloadScore_];
}

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc {
  OrgApacheLuceneSearchExplanation *nonPayloadExpl = [super explainWithInt:doc];
  OrgApacheLuceneSearchExplanation *payloadBoost = create_OrgApacheLuceneSearchExplanation_init();
  jfloat payloadScore = [self getPayloadScore];
  [payloadBoost setValueWithFloat:payloadScore];
  [payloadBoost setDescriptionWithNSString:@"scorePayload(...)"];
  OrgApacheLuceneSearchComplexExplanation *result = create_OrgApacheLuceneSearchComplexExplanation_init();
  if (this$0_->this$0_->includeSpanScore_) {
    [result addDetailWithOrgApacheLuceneSearchExplanation:nonPayloadExpl];
    [result addDetailWithOrgApacheLuceneSearchExplanation:payloadBoost];
    [result setValueWithFloat:[((OrgApacheLuceneSearchExplanation *) nil_chk(nonPayloadExpl)) getValue] * payloadScore];
    [result setDescriptionWithNSString:@"btq, product of:"];
  }
  else {
    [result addDetailWithOrgApacheLuceneSearchExplanation:payloadBoost];
    [result setValueWithFloat:payloadScore];
    [result setDescriptionWithNSString:@"btq(includeSpanScore=false), result of:"];
  }
  [result setMatchWithJavaLangBoolean:[((OrgApacheLuceneSearchExplanation *) nil_chk(nonPayloadExpl)) getValue] == 0 ? JreLoadStatic(JavaLangBoolean, FALSE) : JreLoadStatic(JavaLangBoolean, TRUE)];
  return result;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(payload_);
  RELEASE_(positions_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x4, 4, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight:withOrgApacheLuceneSearchSpansTermSpans:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchSimilarity:withByteArray:);
  methods[1].selector = @selector(setFreqCurrentDoc);
  methods[2].selector = @selector(processPayloadWithOrgApacheLuceneSearchSimilarity:);
  methods[3].selector = @selector(score);
  methods[4].selector = @selector(getSpanScore);
  methods[5].selector = @selector(getPayloadScore);
  methods[6].selector = @selector(explainWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "payload_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "positions_", "LOrgApacheLuceneIndexTermPositions;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "payloadScore_", "F", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "payloadsSeen_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansTermSpans;LOrgApacheLuceneSearchWeight;LOrgApacheLuceneSearchSimilarity;[B", "LJavaIoIOException;", "processPayload", "LOrgApacheLuceneSearchSimilarity;", "explain", "I", "LOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer = { "PayloadTermSpanScorer", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x4, 7, 5, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *self, OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *outer$, OrgApacheLuceneSearchSpansTermSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, spans, weight, similarity, norms);
  JreStrongAssignAndConsume(&self->payload_, [IOSByteArray newArrayWithLength:256]);
  JreStrongAssign(&self->positions_, [((OrgApacheLuceneSearchSpansTermSpans *) nil_chk(spans)) getPositions]);
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *outer$, OrgApacheLuceneSearchSpansTermSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_, outer$, spans, weight, similarity, norms)
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer *create_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer_initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight *outer$, OrgApacheLuceneSearchSpansTermSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer, initWithOrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_withOrgApacheLuceneSearchSpansTermSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_, outer$, spans, weight, similarity, norms)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermWeight_PayloadTermSpanScorer)
