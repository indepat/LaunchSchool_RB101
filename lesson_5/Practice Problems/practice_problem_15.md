Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

```ruby
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
```

```ruby
arr = [{a: [1, 2, 3]}, 
{b: [2, 4, 6], c: [3, 6], d: [4]}, 
{e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end
```



If all of the integers in an inner array are even then the inner block returns `true` to the innermost call to `all?`. If all of the inner blocks for a particular hash return `true` then the middle block returns `true` to the outer call to `all?` which in turn causes the outer block to return `true` to the `select` method for that iteration.