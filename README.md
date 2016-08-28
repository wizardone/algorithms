# simple_scripts
A collection of simple, yet useful ruby code examples

## Count occurences of element in a collection
```ruby
a = ['foo', 'bar', 'zzz', 'foo', 'bar', 'ccc']
Hash[a.group_by {|e| e.itself}.map {|k, v| [v.uniq, v.size]}]
```
## Creating a new class in a funky way
```ruby
MyModel = Class.new do
  def my_method
  end
end
MyModel.new.my_method
```

## Benchmarking anything in realtime
```ruby
require 'benchmark'
def bench(count, &block)
  Benchmark.realtime do
    count.times { |i| yield(i) }
  end
end
```
and use it like:
```ruby
bench(1000) do |i|
"joining strings is fast" << i.to_s
end
```
