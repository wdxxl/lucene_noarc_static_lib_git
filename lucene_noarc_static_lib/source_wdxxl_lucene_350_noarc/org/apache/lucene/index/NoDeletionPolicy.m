//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/index/NoDeletionPolicy.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"
#include "org/apache/lucene/index/NoDeletionPolicy.h"

@interface OrgApacheLuceneIndexNoDeletionPolicy ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexNoDeletionPolicy_init(OrgApacheLuceneIndexNoDeletionPolicy *self);

__attribute__((unused)) static OrgApacheLuceneIndexNoDeletionPolicy *new_OrgApacheLuceneIndexNoDeletionPolicy_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexNoDeletionPolicy *create_OrgApacheLuceneIndexNoDeletionPolicy_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexNoDeletionPolicy)

id<OrgApacheLuceneIndexIndexDeletionPolicy> OrgApacheLuceneIndexNoDeletionPolicy_INSTANCE;

@implementation OrgApacheLuceneIndexNoDeletionPolicy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexNoDeletionPolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits {
}

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onCommitWithJavaUtilList:);
  methods[2].selector = @selector(onInitWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgApacheLuceneIndexIndexDeletionPolicy;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "onCommit", "LJavaUtilList;", "LJavaIoIOException;", "(Ljava/util/List<+Lorg/apache/lucene/index/IndexCommit;>;)V", "onInit", &OrgApacheLuceneIndexNoDeletionPolicy_INSTANCE };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexNoDeletionPolicy = { "NoDeletionPolicy", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexNoDeletionPolicy;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexNoDeletionPolicy class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexNoDeletionPolicy_INSTANCE, new_OrgApacheLuceneIndexNoDeletionPolicy_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexNoDeletionPolicy)
  }
}

@end

void OrgApacheLuceneIndexNoDeletionPolicy_init(OrgApacheLuceneIndexNoDeletionPolicy *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexNoDeletionPolicy *new_OrgApacheLuceneIndexNoDeletionPolicy_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexNoDeletionPolicy, init)
}

OrgApacheLuceneIndexNoDeletionPolicy *create_OrgApacheLuceneIndexNoDeletionPolicy_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexNoDeletionPolicy, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexNoDeletionPolicy)
