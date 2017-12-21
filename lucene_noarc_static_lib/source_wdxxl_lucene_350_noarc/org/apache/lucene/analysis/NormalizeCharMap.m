//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/analysis/NormalizeCharMap.java
//

#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/NormalizeCharMap.h"

@implementation OrgApacheLuceneAnalysisNormalizeCharMap

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNormalizeCharMap_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithNSString:(NSString *)singleMatch
           withNSString:(NSString *)replacement {
  OrgApacheLuceneAnalysisNormalizeCharMap *currMap = self;
  for (jint i = 0; i < [((NSString *) nil_chk(singleMatch)) java_length]; i++) {
    jchar c = [singleMatch charAtWithInt:i];
    if (currMap->submap_ == nil) {
      JreStrongAssignAndConsume(&currMap->submap_, new_JavaUtilHashMap_initWithInt_(1));
    }
    OrgApacheLuceneAnalysisNormalizeCharMap *map = [currMap->submap_ getWithId:JavaLangCharacter_valueOfWithChar_(c)];
    if (map == nil) {
      map = create_OrgApacheLuceneAnalysisNormalizeCharMap_init();
      [((id<JavaUtilMap>) nil_chk(currMap->submap_)) putWithId:JavaLangCharacter_valueOfWithChar_(c) withId:map];
    }
    currMap = map;
  }
  if (currMap->normStr_ != nil) {
    @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$", @"MappingCharFilter: there is already a mapping for ", singleMatch));
  }
  JreStrongAssign(&currMap->normStr_, replacement);
  currMap->diff_ = [singleMatch java_length] - [((NSString *) nil_chk(replacement)) java_length];
}

- (void)dealloc {
  RELEASE_(submap_);
  RELEASE_(normStr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "submap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x0, -1, -1, 2, -1 },
    { "normStr_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "diff_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LNSString;LNSString;", "Ljava/util/Map<Ljava/lang/Character;Lorg/apache/lucene/analysis/NormalizeCharMap;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNormalizeCharMap = { "NormalizeCharMap", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x1, 2, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisNormalizeCharMap;
}

@end

void OrgApacheLuceneAnalysisNormalizeCharMap_init(OrgApacheLuceneAnalysisNormalizeCharMap *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisNormalizeCharMap *new_OrgApacheLuceneAnalysisNormalizeCharMap_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNormalizeCharMap, init)
}

OrgApacheLuceneAnalysisNormalizeCharMap *create_OrgApacheLuceneAnalysisNormalizeCharMap_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNormalizeCharMap, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNormalizeCharMap)
