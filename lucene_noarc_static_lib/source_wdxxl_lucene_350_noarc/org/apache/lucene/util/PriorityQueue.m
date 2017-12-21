//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:wdxxl_lucene_350.jar!org/apache/lucene/util/PriorityQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@interface OrgApacheLuceneUtilPriorityQueue () {
 @public
  jint size_;
  jint maxSize_;
  IOSObjectArray *heap_;
}

- (void)upHeap;

- (void)downHeap;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPriorityQueue, heap_, IOSObjectArray *)

__attribute__((unused)) static id OrgApacheLuceneUtilPriorityQueue_addWithId_(OrgApacheLuceneUtilPriorityQueue *self, id element);

__attribute__((unused)) static id OrgApacheLuceneUtilPriorityQueue_updateTop(OrgApacheLuceneUtilPriorityQueue *self);

__attribute__((unused)) static void OrgApacheLuceneUtilPriorityQueue_upHeap(OrgApacheLuceneUtilPriorityQueue *self);

__attribute__((unused)) static void OrgApacheLuceneUtilPriorityQueue_downHeap(OrgApacheLuceneUtilPriorityQueue *self);

@implementation OrgApacheLuceneUtilPriorityQueue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPriorityQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)lessThanWithId:(id)a
                    withId:(id)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)getSentinelObject {
  return nil;
}

- (void)initialize__WithInt:(jint)maxSize {
  size_ = 0;
  jint heapSize;
  if (0 == maxSize) heapSize = 2;
  else {
    if (maxSize == JavaLangInteger_MAX_VALUE) {
      heapSize = JavaLangInteger_MAX_VALUE;
    }
    else {
      heapSize = maxSize + 1;
    }
  }
  JreStrongAssign(&heap_, [IOSObjectArray arrayWithLength:heapSize type:NSObject_class_()]);
  self->maxSize_ = maxSize;
  id sentinel = [self getSentinelObject];
  if (sentinel != nil) {
    IOSObjectArray_Set(nil_chk(heap_), 1, sentinel);
    for (jint i = 2; i < ((IOSObjectArray *) nil_chk(heap_))->size_; i++) {
      IOSObjectArray_Set(heap_, i, [self getSentinelObject]);
    }
    size_ = maxSize;
  }
}

- (id)addWithId:(id)element {
  return OrgApacheLuceneUtilPriorityQueue_addWithId_(self, element);
}

- (id)insertWithOverflowWithId:(id)element {
  if (size_ < maxSize_) {
    OrgApacheLuceneUtilPriorityQueue_addWithId_(self, element);
    return nil;
  }
  else if (size_ > 0 && ![self lessThanWithId:element withId:IOSObjectArray_Get(nil_chk(heap_), 1)]) {
    id ret = IOSObjectArray_Get(nil_chk(heap_), 1);
    IOSObjectArray_Set(heap_, 1, element);
    OrgApacheLuceneUtilPriorityQueue_updateTop(self);
    return ret;
  }
  else {
    return element;
  }
}

- (id)top {
  return IOSObjectArray_Get(nil_chk(heap_), 1);
}

- (id)pop {
  if (size_ > 0) {
    id result = IOSObjectArray_Get(nil_chk(heap_), 1);
    IOSObjectArray_Set(heap_, 1, IOSObjectArray_Get(heap_, size_));
    IOSObjectArray_Set(heap_, size_, nil);
    size_--;
    OrgApacheLuceneUtilPriorityQueue_downHeap(self);
    return result;
  }
  else return nil;
}

- (id)updateTop {
  return OrgApacheLuceneUtilPriorityQueue_updateTop(self);
}

- (jint)size {
  return size_;
}

- (void)clear {
  for (jint i = 0; i <= size_; i++) {
    IOSObjectArray_Set(nil_chk(heap_), i, nil);
  }
  size_ = 0;
}

- (void)upHeap {
  OrgApacheLuceneUtilPriorityQueue_upHeap(self);
}

- (void)downHeap {
  OrgApacheLuceneUtilPriorityQueue_downHeap(self);
}

- (IOSObjectArray *)getHeapArray {
  return heap_;
}

- (void)dealloc {
  RELEASE_(heap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 3, -1, -1 },
    { NULL, "V", 0x14, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x11, 6, 7, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 7, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x11, -1, -1, -1, 3, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSObject;", 0x14, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(lessThanWithId:withId:);
  methods[2].selector = @selector(getSentinelObject);
  methods[3].selector = @selector(initialize__WithInt:);
  methods[4].selector = @selector(addWithId:);
  methods[5].selector = @selector(insertWithOverflowWithId:);
  methods[6].selector = @selector(top);
  methods[7].selector = @selector(pop);
  methods[8].selector = @selector(updateTop);
  methods[9].selector = @selector(size);
  methods[10].selector = @selector(clear);
  methods[11].selector = @selector(upHeap);
  methods[12].selector = @selector(downHeap);
  methods[13].selector = @selector(getHeapArray);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "size_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "heap_", "[LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "lessThan", "LNSObject;LNSObject;", "(TT;TT;)Z", "()TT;", "initialize", "I", "add", "LNSObject;", "(TT;)TT;", "insertWithOverflow", "[TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPriorityQueue = { "PriorityQueue", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 14, 3, -1, -1, -1, 11, -1 };
  return &_OrgApacheLuceneUtilPriorityQueue;
}

@end

void OrgApacheLuceneUtilPriorityQueue_init(OrgApacheLuceneUtilPriorityQueue *self) {
  NSObject_init(self);
}

id OrgApacheLuceneUtilPriorityQueue_addWithId_(OrgApacheLuceneUtilPriorityQueue *self, id element) {
  self->size_++;
  IOSObjectArray_Set(nil_chk(self->heap_), self->size_, element);
  OrgApacheLuceneUtilPriorityQueue_upHeap(self);
  return IOSObjectArray_Get(nil_chk(self->heap_), 1);
}

id OrgApacheLuceneUtilPriorityQueue_updateTop(OrgApacheLuceneUtilPriorityQueue *self) {
  OrgApacheLuceneUtilPriorityQueue_downHeap(self);
  return IOSObjectArray_Get(nil_chk(self->heap_), 1);
}

void OrgApacheLuceneUtilPriorityQueue_upHeap(OrgApacheLuceneUtilPriorityQueue *self) {
  jint i = self->size_;
  id node = IOSObjectArray_Get(nil_chk(self->heap_), i);
  jint j = JreURShift32(i, 1);
  while (j > 0 && [self lessThanWithId:node withId:IOSObjectArray_Get(self->heap_, j)]) {
    IOSObjectArray_Set(nil_chk(self->heap_), i, IOSObjectArray_Get(self->heap_, j));
    i = j;
    j = JreURShift32(j, 1);
  }
  IOSObjectArray_Set(nil_chk(self->heap_), i, node);
}

void OrgApacheLuceneUtilPriorityQueue_downHeap(OrgApacheLuceneUtilPriorityQueue *self) {
  jint i = 1;
  id node = IOSObjectArray_Get(nil_chk(self->heap_), i);
  jint j = JreLShift32(i, 1);
  jint k = j + 1;
  if (k <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(self->heap_, k) withId:IOSObjectArray_Get(self->heap_, j)]) {
    j = k;
  }
  while (j <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(nil_chk(self->heap_), j) withId:node]) {
    IOSObjectArray_Set(nil_chk(self->heap_), i, IOSObjectArray_Get(self->heap_, j));
    i = j;
    j = JreLShift32(i, 1);
    k = j + 1;
    if (k <= self->size_ && [self lessThanWithId:IOSObjectArray_Get(self->heap_, k) withId:IOSObjectArray_Get(self->heap_, j)]) {
      j = k;
    }
  }
  IOSObjectArray_Set(nil_chk(self->heap_), i, node);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPriorityQueue)
