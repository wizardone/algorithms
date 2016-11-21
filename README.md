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

### Generating array of n elements in javascript
```javascript
let count = 4;
[...Array(count).keys()]
```

### Binary search in Ruby
```ruby
ARR = [1,2,3,5,7,9,12,23,34,45,65]
# Find the index of letter in the array
def find(num)
  lowest = 0
  highest = ARR.count

  while lowest < highest do
    middle_index = ((lowest + highest) / 2).floor
    middle_value = ARR[middle_index]
    if num == middle_value
      puts "Index is #{middle_index}"
      break
    elsif num < middle_value
      highest = middle_index - 1
    elsif num > middle_value
      lowest = middle_index + 1
    end
  end
  puts 'No target found'
end
```

### Bubble sort in Ruby
```ruby
arr = [5,1,4,2,8]
def bubble_sort(arr)
  length = arr.size - 1
  loop do
    swapped = false
    for i in 0..length do
      curr = arr[i]
      nex = arr[i+1]
      if nex && curr > nex
        swapped = true
        arr[i] = nex
        arr[i+1] = curr
      end
    end
    break if swapped == false
  end
  arr
end
```
