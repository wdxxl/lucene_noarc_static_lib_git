//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/search/CachingWrapperFilter.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/WeakHashMap.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/CachingWrapperFilter.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilteredDocIdSet.h"
#include "org/apache/lucene/util/FixedBitSet.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

__attribute__((unused)) static void OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initWithNSString_withInt_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneSearchCachingWrapperFilter_FilterCache () {
 @public
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache, deletesMode_, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)

@interface OrgApacheLuceneSearchCachingWrapperFilter_1 : OrgApacheLuceneSearchCachingWrapperFilter_FilterCache

- (instancetype)initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode;

- (OrgApacheLuceneSearchDocIdSet *)mergeDeletesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                            withId:(OrgApacheLuceneSearchDocIdSet *)docIdSet;

- (OrgApacheLuceneSearchDocIdSet *)getWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                                                   withId:(id)arg1
                                                                   withId:(id)arg2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter_1)

__attribute__((unused)) static void OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_1 *self, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode);

__attribute__((unused)) static OrgApacheLuceneSearchCachingWrapperFilter_1 *new_OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchCachingWrapperFilter_1 *create_OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode);

@interface OrgApacheLuceneSearchCachingWrapperFilter_1_1 : OrgApacheLuceneSearchFilteredDocIdSet {
 @public
  OrgApacheLuceneIndexIndexReader *val$r_;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)capture$0
                      withOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet;

- (jboolean)matchWithInt:(jint)docID;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter_1_1)

__attribute__((unused)) static void OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchCachingWrapperFilter_1_1 *self, OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet);

__attribute__((unused)) static OrgApacheLuceneSearchCachingWrapperFilter_1_1 *new_OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchCachingWrapperFilter_1_1 *create_OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet);

@implementation OrgApacheLuceneSearchCachingWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(self, filter);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(self, filter, deletesMode);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if (docIdSet == nil) {
    return JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY_DOCIDSET);
  }
  else if ([docIdSet isCacheable]) {
    return docIdSet;
  }
  else {
    OrgApacheLuceneSearchDocIdSetIterator *it = [docIdSet iterator];
    if (it == nil) {
      return JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY_DOCIDSET);
    }
    else {
      OrgApacheLuceneUtilFixedBitSet *bits = create_OrgApacheLuceneUtilFixedBitSet_initWithInt_([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc]);
      [bits or__WithOrgApacheLuceneSearchDocIdSetIterator:it];
      return bits;
    }
  }
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  id coreKey = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getCoreCacheKey];
  id delCoreKey = [reader hasDeletions] ? [reader getDeletesCacheKey] : coreKey;
  OrgApacheLuceneSearchDocIdSet *docIdSet = [((OrgApacheLuceneSearchCachingWrapperFilter_FilterCache *) nil_chk(cache_)) getWithOrgApacheLuceneIndexIndexReader:reader withId:coreKey withId:delCoreKey];
  if (docIdSet != nil) {
    hitCount_++;
    return docIdSet;
  }
  missCount_++;
  docIdSet = [self docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:[((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) getDocIdSetWithOrgApacheLuceneIndexIndexReader:reader] withOrgApacheLuceneIndexIndexReader:reader];
  if (docIdSet != nil) {
    [cache_ putWithId:coreKey withId:delCoreKey withId:docIdSet];
  }
  return docIdSet;
}

- (NSString *)description {
  return JreStrcat("$@C", @"CachingWrapperFilter(", filter_, ')');
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchCachingWrapperFilter class]])) return false;
  return [((OrgApacheLuceneSearchFilter *) nil_chk(self->filter_)) isEqual:((OrgApacheLuceneSearchCachingWrapperFilter *) nil_chk(((OrgApacheLuceneSearchCachingWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchCachingWrapperFilter class]))))->filter_];
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) hash]) ^ (jint) 0x1117BF25;
}

- (void)dealloc {
  RELEASE_(filter_);
  RELEASE_(cache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x4, 2, 3, 4, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, 5, 6, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchFilter:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:);
  methods[2].selector = @selector(docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:withOrgApacheLuceneIndexIndexReader:);
  methods[3].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexIndexReader:);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "filter_", "LOrgApacheLuceneSearchFilter;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "cache_", "LOrgApacheLuceneSearchCachingWrapperFilter_FilterCache;", .constantValue.asLong = 0, 0x14, -1, -1, 11, -1 },
    { "hitCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "missCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchFilter;", "LOrgApacheLuceneSearchFilter;LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", "docIdSetToCache", "LOrgApacheLuceneSearchDocIdSet;LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "getDocIdSet", "LOrgApacheLuceneIndexIndexReader;", "toString", "equals", "LNSObject;", "hashCode", "Lorg/apache/lucene/search/CachingWrapperFilter$FilterCache<Lorg/apache/lucene/search/DocIdSet;>;", "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;LOrgApacheLuceneSearchCachingWrapperFilter_FilterCache;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter = { "CachingWrapperFilter", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 7, 4, -1, 12, -1, -1, -1 };
  return &_OrgApacheLuceneSearchCachingWrapperFilter;
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter) {
  OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(self, filter, JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, IGNORE));
}

OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->filter_, filter);
  JreStrongAssignAndConsume(&self->cache_, new_OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(deletesMode));
}

OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_, filter, deletesMode)
}

OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_, filter, deletesMode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCachingWrapperFilter)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode)

OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_[3];

@implementation OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values();
}

+ (OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "IGNORE", "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "RECACHE", "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "DYNAMIC", "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, IGNORE), &JreEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, RECACHE), &JreEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, DYNAMIC), "LOrgApacheLuceneSearchCachingWrapperFilter;", "Ljava/lang/Enum<Lorg/apache/lucene/search/CachingWrapperFilter$DeletesMode;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode = { "DeletesMode", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x4019, 2, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    id names[] = {
      @"IGNORE", @"RECACHE", @"DYNAMIC",
    };
    for (jint i = 0; i < 3; i++) {
      (OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_[i] = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
      OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initWithNSString_withInt_(e, names[i], i);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode)
  }
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initWithNSString_withInt_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values() {
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_ count:3 type:OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_class_()];
}

OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *e = OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode)

@implementation OrgApacheLuceneSearchCachingWrapperFilter_FilterCache

- (instancetype)initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode {
  OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(self, deletesMode);
  return self;
}

- (id)getWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                      withId:(id)coreKey
                                      withId:(id)delCoreKey {
  @synchronized(self) {
    id value;
    if (cache_ == nil) {
      JreStrongAssignAndConsume(&cache_, new_JavaUtilWeakHashMap_init());
    }
    if (deletesMode_ == JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, IGNORE)) {
      value = [cache_ getWithId:coreKey];
    }
    else if (deletesMode_ == JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, RECACHE)) {
      value = [cache_ getWithId:delCoreKey];
    }
    else {
      JreAssert((deletesMode_ == JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, DYNAMIC)), (@"org/apache/lucene/search/CachingWrapperFilter.java:95 condition failed: assert deletesMode == DeletesMode.DYNAMIC;"));
      value = [cache_ getWithId:delCoreKey];
      if (value == nil) {
        value = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:coreKey];
        if (value != nil && [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) hasDeletions]) {
          value = [self mergeDeletesWithOrgApacheLuceneIndexIndexReader:reader withId:value];
        }
      }
    }
    return value;
  }
}

- (id)mergeDeletesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)putWithId:(id)coreKey
           withId:(id)delCoreKey
           withId:(id)value {
  @synchronized(self) {
    if (deletesMode_ == JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, IGNORE)) {
      [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:coreKey withId:value];
    }
    else if (deletesMode_ == JreLoadEnum(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, RECACHE)) {
      [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:delCoreKey withId:value];
    }
    else {
      [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:coreKey withId:value];
      [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:delCoreKey withId:value];
    }
  }
}

- (void)dealloc {
  RELEASE_(cache_);
  RELEASE_(deletesMode_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x21, 1, 2, 3, 4, -1, -1 },
    { NULL, "LNSObject;", 0x404, 5, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x21, 8, 9, -1, 10, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:);
  methods[1].selector = @selector(getWithOrgApacheLuceneIndexIndexReader:withId:withId:);
  methods[2].selector = @selector(mergeDeletesWithOrgApacheLuceneIndexIndexReader:withId:);
  methods[3].selector = @selector(putWithId:withId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "cache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x80, -1, -1, 11, -1 },
    { "deletesMode_", "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", "get", "LOrgApacheLuceneIndexIndexReader;LNSObject;LNSObject;", "LJavaIoIOException;", "(Lorg/apache/lucene/index/IndexReader;Ljava/lang/Object;Ljava/lang/Object;)TT;", "mergeDeletes", "LOrgApacheLuceneIndexIndexReader;LNSObject;", "(Lorg/apache/lucene/index/IndexReader;TT;)TT;", "put", "LNSObject;LNSObject;LNSObject;", "(Ljava/lang/Object;Ljava/lang/Object;TT;)V", "Ljava/util/Map<Ljava/lang/Object;TT;>;", "LOrgApacheLuceneSearchCachingWrapperFilter;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter_FilterCache = { "FilterCache", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x408, 4, 2, 12, -1, -1, 13, -1 };
  return &_OrgApacheLuceneSearchCachingWrapperFilter_FilterCache;
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache *self, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  NSObject_init(self);
  JreStrongAssign(&self->deletesMode_, deletesMode);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache)

@implementation OrgApacheLuceneSearchCachingWrapperFilter_1

- (instancetype)initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode {
  OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(self, deletesMode);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)mergeDeletesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                                            withId:(OrgApacheLuceneSearchDocIdSet *)docIdSet {
  return create_OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(r, docIdSet);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:);
  methods[1].selector = @selector(mergeDeletesWithOrgApacheLuceneIndexIndexReader:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;", "mergeDeletes", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchDocIdSet;", "LOrgApacheLuceneSearchCachingWrapperFilter;", "initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:", "Lorg/apache/lucene/search/CachingWrapperFilter$FilterCache<Lorg/apache/lucene/search/DocIdSet;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneSearchCachingWrapperFilter_1;
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_1 *self, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(self, deletesMode);
}

OrgApacheLuceneSearchCachingWrapperFilter_1 *new_OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter_1, initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_, deletesMode)
}

OrgApacheLuceneSearchCachingWrapperFilter_1 *create_OrgApacheLuceneSearchCachingWrapperFilter_1_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter_1, initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_, deletesMode)
}

@implementation OrgApacheLuceneSearchCachingWrapperFilter_1_1

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)capture$0
                      withOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet {
  OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(self, capture$0, innerSet);
  return self;
}

- (jboolean)matchWithInt:(jint)docID {
  return ![((OrgApacheLuceneIndexIndexReader *) nil_chk(val$r_)) isDeletedWithInt:docID];
}

- (void)dealloc {
  RELEASE_(val$r_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchDocIdSet:);
  methods[1].selector = @selector(matchWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$r_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSet;", "match", "I", "LOrgApacheLuceneSearchCachingWrapperFilter_1;", "mergeDeletesWithOrgApacheLuceneIndexIndexReader:withId:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCachingWrapperFilter_1_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 2, 1, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneSearchCachingWrapperFilter_1_1;
}

@end

void OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchCachingWrapperFilter_1_1 *self, OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet) {
  JreStrongAssign(&self->val$r_, capture$0);
  OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(self, innerSet);
}

OrgApacheLuceneSearchCachingWrapperFilter_1_1 *new_OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchCachingWrapperFilter_1_1, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_, capture$0, innerSet)
}

OrgApacheLuceneSearchCachingWrapperFilter_1_1 *create_OrgApacheLuceneSearchCachingWrapperFilter_1_1_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneIndexIndexReader *capture$0, OrgApacheLuceneSearchDocIdSet *innerSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchCachingWrapperFilter_1_1, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneSearchDocIdSet_, capture$0, innerSet)
}
