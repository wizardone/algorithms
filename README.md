# simple_scripts
A collection of simple, yet useful ruby code examples

## Count occurences of element in a collection
```ruby
a = ['foo', 'bar', 'zzz', 'foo', 'bar', 'ccc']
Hash[a.group_by {|e| e.itself}.map {|k, v| [v.uniq, v.size]}]
```
