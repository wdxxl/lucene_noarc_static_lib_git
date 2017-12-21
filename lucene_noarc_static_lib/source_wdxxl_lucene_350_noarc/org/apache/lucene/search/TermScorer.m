//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/TermScorer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/TermDocs.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/TermScorer.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchTermScorer () {
 @public
  id<OrgApacheLuceneIndexTermDocs> termDocs_;
  IOSByteArray *norms_;
  jfloat weightValue_;
  jint doc_;
  jint freq_;
  IOSIntArray *docs_;
  IOSIntArray *freqs_;
  jint pointer_;
  jint pointerMax_;
  IOSFloatArray *scoreCache_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermScorer, termDocs_, id<OrgApacheLuceneIndexTermDocs>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermScorer, norms_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermScorer, docs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermScorer, freqs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermScorer, scoreCache_, IOSFloatArray *)

inline jint OrgApacheLuceneSearchTermScorer_get_SCORE_CACHE_SIZE();
#define OrgApacheLuceneSearchTermScorer_SCORE_CACHE_SIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchTermScorer, SCORE_CACHE_SIZE, jint)

@implementation OrgApacheLuceneSearchTermScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                   withOrgApacheLuceneIndexTermDocs:(id<OrgApacheLuceneIndexTermDocs>)td
                withOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity
                                      withByteArray:(IOSByteArray *)norms {
  OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, weight, td, similarity, norms);
  return self;
}

- (void)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)c {
  [self scoreWithOrgApacheLuceneSearchCollector:c withInt:JavaLangInteger_MAX_VALUE withInt:[self nextDoc]];
}

- (jboolean)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)c
                                            withInt:(jint)end
                                            withInt:(jint)firstDocID {
  [((OrgApacheLuceneSearchCollector *) nil_chk(c)) setScorerWithOrgApacheLuceneSearchScorer:self];
  while (doc_ < end) {
    [c collectWithInt:doc_];
    if (++pointer_ >= pointerMax_) {
      pointerMax_ = [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(termDocs_)) readWithIntArray:docs_ withIntArray:freqs_];
      if (pointerMax_ != 0) {
        pointer_ = 0;
      }
      else {
        [termDocs_ close];
        doc_ = JavaLangInteger_MAX_VALUE;
        return false;
      }
    }
    doc_ = IOSIntArray_Get(nil_chk(docs_), pointer_);
    freq_ = IOSIntArray_Get(nil_chk(freqs_), pointer_);
  }
  return true;
}

- (jint)docID {
  return doc_;
}

- (jfloat)freq {
  return freq_;
}

- (jint)nextDoc {
  pointer_++;
  if (pointer_ >= pointerMax_) {
    pointerMax_ = [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(termDocs_)) readWithIntArray:docs_ withIntArray:freqs_];
    if (pointerMax_ != 0) {
      pointer_ = 0;
    }
    else {
      [termDocs_ close];
      return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    }
  }
  doc_ = IOSIntArray_Get(nil_chk(docs_), pointer_);
  freq_ = IOSIntArray_Get(nil_chk(freqs_), pointer_);
  return doc_;
}

- (jfloat)score {
  JreAssert((doc_ != -1), (@"org/apache/lucene/search/TermScorer.java:127 condition failed: assert doc != -1;"));
  jfloat raw = freq_ < OrgApacheLuceneSearchTermScorer_SCORE_CACHE_SIZE ? IOSFloatArray_Get(nil_chk(scoreCache_), freq_) : [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) tfWithInt:freq_] * weightValue_;
  return norms_ == nil ? raw : raw * [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) decodeNormValueWithByte:IOSByteArray_Get(norms_, doc_)];
}

- (jint)advanceWithInt:(jint)target {
  for (pointer_++; pointer_ < pointerMax_; pointer_++) {
    if (IOSIntArray_Get(nil_chk(docs_), pointer_) >= target) {
      freq_ = IOSIntArray_Get(nil_chk(freqs_), pointer_);
      return doc_ = IOSIntArray_Get(docs_, pointer_);
    }
  }
  jboolean result = [((id<OrgApacheLuceneIndexTermDocs>) nil_chk(termDocs_)) skipToWithInt:target];
  if (result) {
    pointerMax_ = 1;
    pointer_ = 0;
    *IOSIntArray_GetRef(nil_chk(docs_), pointer_) = doc_ = [termDocs_ doc];
    *IOSIntArray_GetRef(nil_chk(freqs_), pointer_) = freq_ = [termDocs_ freq];
  }
  else {
    doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  return doc_;
}

- (NSString *)description {
  return JreStrcat("$@C", @"scorer(", weight_, ')');
}

- (void)dealloc {
  RELEASE_(termDocs_);
  RELEASE_(norms_);
  RELEASE_(docs_);
  RELEASE_(freqs_);
  RELEASE_(scoreCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 4, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneIndexTermDocs:withOrgApacheLuceneSearchSimilarity:withByteArray:);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:);
  methods[2].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:withInt:withInt:);
  methods[3].selector = @selector(docID);
  methods[4].selector = @selector(freq);
  methods[5].selector = @selector(nextDoc);
  methods[6].selector = @selector(score);
  methods[7].selector = @selector(advanceWithInt:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termDocs_", "LOrgApacheLuceneIndexTermDocs;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "norms_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "weightValue_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "freq_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docs_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "freqs_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "pointer_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pointerMax_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "SCORE_CACHE_SIZE", "I", .constantValue.asInt = OrgApacheLuceneSearchTermScorer_SCORE_CACHE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "scoreCache_", "[F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;LOrgApacheLuceneIndexTermDocs;LOrgApacheLuceneSearchSimilarity;[B", "score", "LOrgApacheLuceneSearchCollector;", "LJavaIoIOException;", "LOrgApacheLuceneSearchCollector;II", "advance", "I", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermScorer = { "TermScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 9, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTermScorer;
}

@end

void OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchTermScorer *self, OrgApacheLuceneSearchWeight *weight, id<OrgApacheLuceneIndexTermDocs> td, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchSimilarity_withOrgApacheLuceneSearchWeight_(self, similarity, weight);
  self->doc_ = -1;
  JreStrongAssignAndConsume(&self->docs_, [IOSIntArray newArrayWithLength:32]);
  JreStrongAssignAndConsume(&self->freqs_, [IOSIntArray newArrayWithLength:32]);
  JreStrongAssignAndConsume(&self->scoreCache_, [IOSFloatArray newArrayWithLength:OrgApacheLuceneSearchTermScorer_SCORE_CACHE_SIZE]);
  JreStrongAssign(&self->termDocs_, td);
  JreStrongAssign(&self->norms_, norms);
  self->weightValue_ = [((OrgApacheLuceneSearchWeight *) nil_chk(weight)) getValue];
  for (jint i = 0; i < OrgApacheLuceneSearchTermScorer_SCORE_CACHE_SIZE; i++) *IOSFloatArray_GetRef(self->scoreCache_, i) = [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) tfWithInt:i] * self->weightValue_;
}

OrgApacheLuceneSearchTermScorer *new_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchWeight *weight, id<OrgApacheLuceneIndexTermDocs> td, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_, weight, td, similarity, norms)
}

OrgApacheLuceneSearchTermScorer *create_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchWeight *weight, id<OrgApacheLuceneIndexTermDocs> td, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexTermDocs_withOrgApacheLuceneSearchSimilarity_withByteArray_, weight, td, similarity, norms)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermScorer)
