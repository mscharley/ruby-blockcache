# BlockCache

by Matthew Scharley
http://github.com/mscharley/ruby-blockcache

## Overview

> In computer science, a cache is a component that improves performance 
> by transparently storing data such that future requests for that 
> data can be served faster.
>
> -- [Cache at Wikipedia](http://en.wikipedia.org/wiki/Cache)

Typical caches do this by allowing you to store data in them, along with
a time limit to describe how long this data is valid for. You then need
to check if the data is available, and if not, regenerate it and store
it again, ready for next time.

BlockCache eliminates all this. You define your cache, describe the
elements it contains, and then you never have to worry about making
sure you have fresh data again. Of course, if you need to ensure that
you are getting clean, uncached data, you can do that too.

## Example Usage

    require 'blockcache'
    
    cache = BlockCache.new
    cache.add('name', 10) do
      puts "Hello, what is your name?"
      STDIN.gets.strip
    end
    
    for i in [1,2]
      for j in [1,3]
        puts "Hello " + cache['name'] + "!"
      end
      cache.refresh
    end

In the example above, you get asked for your name, then it says 
hello to you three times. Note, each time is using the exact same
code. The program then tells the cache that it wants fresh data,
and repeats the process.
