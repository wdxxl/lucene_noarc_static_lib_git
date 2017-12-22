### First Cycle Finder Demo Java files: https://developers.google.com/j2objc/guides/cycle-finder-tool
```
$ cat Foo.java
package mypkg;
public class Foo {
  Bar myBar;
}

$ cat Bar.java
package mypkg;
public class Bar {
  Foo myFoo;
}

$ cycle_finder Foo.java Bar.java

***** Found reference cycle *****
Bar -> (field myFoo with type Foo)
Foo -> (field myBar with type Bar)
----- Full Types -----
Lmypkg/Bar;
Lmypkg/Foo;

1 CYCLES FOUND.
```

### After Update Source Java files:
```
$ cat Foo.java
package mypkg;
public class Foo {
  Bar myBar;
}

$ cat Bar.java
package mypkg;
import com.google.j2objc.annotations.Weak;

public class Bar {
  @Weak Foo myFoo;
}
$ cycle_finder Foo.java Bar.java

0 CYCLES FOUND.
```

### After Update J2objc to 2.0.5:
```
$ cycle_finder cycle_finder_demo/**/*.java

0 CYCLES FOUND.
```
