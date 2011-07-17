[Fowler-Noll-Vo hash](http://en.wikipedia.org/wiki/Fowler_Noll_Vo_hash)
====================

```ruby
gem install fnv

require "fnv"

FNV.new.fnv1a_64("blah") => 14233852691173593346
```

Supported hashes are fnv1_32, fnv1_64, fnv1a_32, and fnv1a_64.

There are other implementations for ruby but they use C.

Test cases were taken from [here](http://www.isthe.com/chongo/src/fnv/test_fnv.c).

There is also a [Java version](https://github.com/jakedouglas/fnv-java).
