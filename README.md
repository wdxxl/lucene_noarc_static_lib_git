#### Update to J2objc 2.0.5

#### Step 1: Update Source code

https://github.com/wdxxl/lucene

#### Step 2: Convert Jar file for Next
```
j2objc -d source_wdxxl_lucene_350_noarc wdxxl_lucene_350.jar
```

#### Step 3:Build Static Lib XCode Project
xcode for static lib....

#### Step 4:Build Header Files
```
javac RemoveMethodFiles.java
java RemoveMethodFiles
```

#### Step 5: update cordova plugin for verify
https://github.com/wdxxl/cordova_lucene_tuning
