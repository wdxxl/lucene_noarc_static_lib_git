//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector.h"
#include "org/apache/lucene/util/FixedBitSet.h"

@implementation OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector

- (instancetype)initWithInt:(jint)numberOfSorts {
  OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_initWithInt_(self, numberOfSorts);
  return self;
}

- (OrgApacheLuceneUtilFixedBitSet *)retrieveGroupHeadsWithInt:(jint)maxDoc {
  OrgApacheLuceneUtilFixedBitSet *bitSet = create_OrgApacheLuceneUtilFixedBitSet_initWithInt_(maxDoc);
  id<JavaUtilCollection> groupHeads = [self getCollectedGroupHeads];
  for (OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead * __strong groupHead in nil_chk(groupHeads)) {
    [bitSet setWithInt:((OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead *) nil_chk(groupHead))->doc_];
  }
  return bitSet;
}

- (IOSIntArray *)retrieveGroupHeads {
  id<JavaUtilCollection> groupHeads = [self getCollectedGroupHeads];
  IOSIntArray *docHeads = [IOSIntArray arrayWithLength:[((id<JavaUtilCollection>) nil_chk(groupHeads)) size]];
  jint i = 0;
  for (OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead * __strong groupHead in groupHeads) {
    *IOSIntArray_GetRef(docHeads, i++) = ((OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead *) nil_chk(groupHead))->doc_;
  }
  return docHeads;
}

- (jint)groupHeadsSize {
  return [((id<JavaUtilCollection>) nil_chk([self getCollectedGroupHeads])) size];
}

- (void)retrieveGroupHeadAndAddIfNotExistWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<JavaUtilCollection>)getCollectedGroupHeads {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)collectWithInt:(jint)doc {
  [self retrieveGroupHeadAndAddIfNotExistWithInt:doc];
  if (((OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult *) nil_chk(temporalResult_))->stop_) {
    return;
  }
  OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead *groupHead = temporalResult_->groupHead_;
  for (jint compIDX = 0; ; compIDX++) {
    jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [((OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead *) nil_chk(groupHead)) compareWithInt:compIDX withInt:doc];
    if (c < 0) {
      return;
    }
    else if (c > 0) {
      break;
    }
    else if (compIDX == compIDXEnd_) {
      return;
    }
  }
  [groupHead updateDocHeadWithInt:doc];
}

- (jboolean)acceptsDocsOutOfOrder {
  return true;
}

- (void)dealloc {
  RELEASE_(reversed_);
  RELEASE_(temporalResult_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFixedBitSet;", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 2, 0, 3, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x404, -1, -1, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 0, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(retrieveGroupHeadsWithInt:);
  methods[2].selector = @selector(retrieveGroupHeads);
  methods[3].selector = @selector(groupHeadsSize);
  methods[4].selector = @selector(retrieveGroupHeadAndAddIfNotExistWithInt:);
  methods[5].selector = @selector(getCollectedGroupHeads);
  methods[6].selector = @selector(collectWithInt:);
  methods[7].selector = @selector(acceptsDocsOutOfOrder);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reversed_", "[I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "compIDXEnd_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "temporalResult_", "LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "retrieveGroupHeads", "retrieveGroupHeadAndAddIfNotExist", "LJavaIoIOException;", "()Ljava/util/Collection<TGH;>;", "collect", "LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult;LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead;", "<GH:Lorg/apache/lucene/search/grouping/AbstractAllGroupHeadsCollector$GroupHead;>Lorg/apache/lucene/search/Collector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector = { "AbstractAllGroupHeadsCollector", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x401, 8, 3, -1, 6, -1, 7, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector;
}

@end

void OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_initWithInt_(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *self, jint numberOfSorts) {
  OrgApacheLuceneSearchCollector_init(self);
  JreStrongAssignAndConsume(&self->reversed_, [IOSIntArray newArrayWithLength:numberOfSorts]);
  self->compIDXEnd_ = numberOfSorts - 1;
  JreStrongAssignAndConsume(&self->temporalResult_, new_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult_initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_(self));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector)

@implementation OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult

- (instancetype)initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector:(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *)outer$ {
  OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult_initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(groupHead_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupHead_", "LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead;", .constantValue.asLong = 0, 0x1, -1, -1, 0, -1 },
    { "stop_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "TGH;", "LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult = { "TemporalResult", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x4, 1, 2, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult;
}

@end

void OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult_initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult *self, OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *outer$) {
  NSObject_init(self);
}

OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult *new_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult_initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult, initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_, outer$)
}

OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult *create_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult_initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult, initWithOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_TemporalResult)

@implementation OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead

- (instancetype)initWithId:(id)groupValue
                   withInt:(jint)doc {
  OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead_initWithId_withInt_(self, groupValue, doc);
  return self;
}

- (jint)compareWithInt:(jint)compIDX
               withInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)updateDocHeadWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  RELEASE_(groupValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "I", 0x404, 2, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x404, 5, 6, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withInt:);
  methods[1].selector = @selector(compareWithInt:withInt:);
  methods[2].selector = @selector(updateDocHeadWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "groupValue_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 7, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;I", "(TGROUP_VALUE_TYPE;I)V", "compare", "II", "LJavaIoIOException;", "updateDocHead", "I", "TGROUP_VALUE_TYPE;", "LOrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector;", "<GROUP_VALUE_TYPE:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead = { "GroupHead", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x409, 3, 2, 8, -1, -1, 9, -1 };
  return &_OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead;
}

@end

void OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead_initWithId_withInt_(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead *self, id groupValue, jint doc) {
  NSObject_init(self);
  JreStrongAssign(&self->groupValue_, groupValue);
  self->doc_ = doc;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingAbstractAllGroupHeadsCollector_GroupHead)
