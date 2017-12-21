//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/FieldSortedTermVectorMapper.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeSet.h"
#include "org/apache/lucene/index/FieldSortedTermVectorMapper.h"
#include "org/apache/lucene/index/TermVectorEntry.h"
#include "org/apache/lucene/index/TermVectorMapper.h"

@interface OrgApacheLuceneIndexFieldSortedTermVectorMapper () {
 @public
  id<JavaUtilMap> fieldToTerms_;
  id<JavaUtilSortedSet> currentSet_;
  NSString *currentField_;
  id<JavaUtilComparator> comparator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldSortedTermVectorMapper, fieldToTerms_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldSortedTermVectorMapper, currentSet_, id<JavaUtilSortedSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldSortedTermVectorMapper, currentField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldSortedTermVectorMapper, comparator_, id<JavaUtilComparator>)

@implementation OrgApacheLuceneIndexFieldSortedTermVectorMapper

- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithJavaUtilComparator_(self, comparator);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)ignoringPositions
                    withBoolean:(jboolean)ignoringOffsets
         withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(self, ignoringPositions, ignoringOffsets, comparator);
  return self;
}

- (void)mapWithNSString:(NSString *)term
                withInt:(jint)frequency
withOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets
           withIntArray:(IOSIntArray *)positions {
  OrgApacheLuceneIndexTermVectorEntry *entry_ = create_OrgApacheLuceneIndexTermVectorEntry_initWithNSString_withNSString_withInt_withOrgApacheLuceneIndexTermVectorOffsetInfoArray_withIntArray_(currentField_, term, frequency, offsets, positions);
  [((id<JavaUtilSortedSet>) nil_chk(currentSet_)) addWithId:entry_];
}

- (void)setExpectationsWithNSString:(NSString *)field
                            withInt:(jint)numTerms
                        withBoolean:(jboolean)storeOffsets
                        withBoolean:(jboolean)storePositions {
  JreStrongAssignAndConsume(&currentSet_, new_JavaUtilTreeSet_initWithJavaUtilComparator_(comparator_));
  JreStrongAssign(&currentField_, field);
  [((id<JavaUtilMap>) nil_chk(fieldToTerms_)) putWithId:field withId:currentSet_];
}

- (id<JavaUtilMap>)getFieldToTerms {
  return fieldToTerms_;
}

- (id<JavaUtilComparator>)getComparator {
  return comparator_;
}

- (void)dealloc {
  RELEASE_(fieldToTerms_);
  RELEASE_(currentSet_);
  RELEASE_(currentField_);
  RELEASE_(comparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 8, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x1, -1, -1, -1, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilComparator:);
  methods[1].selector = @selector(initWithBoolean:withBoolean:withJavaUtilComparator:);
  methods[2].selector = @selector(mapWithNSString:withInt:withOrgApacheLuceneIndexTermVectorOffsetInfoArray:withIntArray:);
  methods[3].selector = @selector(setExpectationsWithNSString:withInt:withBoolean:withBoolean:);
  methods[4].selector = @selector(getFieldToTerms);
  methods[5].selector = @selector(getComparator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fieldToTerms_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "currentSet_", "LJavaUtilSortedSet;", .constantValue.asLong = 0, 0x2, -1, -1, 11, -1 },
    { "currentField_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "comparator_", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x2, -1, -1, 12, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilComparator;", "(Ljava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;)V", "ZZLJavaUtilComparator;", "(ZZLjava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;)V", "map", "LNSString;I[LOrgApacheLuceneIndexTermVectorOffsetInfo;[I", "setExpectations", "LNSString;IZZ", "()Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedSet<Lorg/apache/lucene/index/TermVectorEntry;>;>;", "()Ljava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;", "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedSet<Lorg/apache/lucene/index/TermVectorEntry;>;>;", "Ljava/util/SortedSet<Lorg/apache/lucene/index/TermVectorEntry;>;", "Ljava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldSortedTermVectorMapper = { "FieldSortedTermVectorMapper", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFieldSortedTermVectorMapper;
}

@end

void OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithJavaUtilComparator_(OrgApacheLuceneIndexFieldSortedTermVectorMapper *self, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(self, false, false, comparator);
}

OrgApacheLuceneIndexFieldSortedTermVectorMapper *new_OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldSortedTermVectorMapper, initWithJavaUtilComparator_, comparator)
}

OrgApacheLuceneIndexFieldSortedTermVectorMapper *create_OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldSortedTermVectorMapper, initWithJavaUtilComparator_, comparator)
}

void OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(OrgApacheLuceneIndexFieldSortedTermVectorMapper *self, jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneIndexTermVectorMapper_initWithBoolean_withBoolean_(self, ignoringPositions, ignoringOffsets);
  JreStrongAssignAndConsume(&self->fieldToTerms_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->comparator_, comparator);
}

OrgApacheLuceneIndexFieldSortedTermVectorMapper *new_OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFieldSortedTermVectorMapper, initWithBoolean_withBoolean_withJavaUtilComparator_, ignoringPositions, ignoringOffsets, comparator)
}

OrgApacheLuceneIndexFieldSortedTermVectorMapper *create_OrgApacheLuceneIndexFieldSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFieldSortedTermVectorMapper, initWithBoolean_withBoolean_withJavaUtilComparator_, ignoringPositions, ignoringOffsets, comparator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldSortedTermVectorMapper)
