Given the following data structure and without modifying the original array, use the `map` method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

```ruby
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
```

Here we will first use the `map` method to iterate through the array and then for each `hash` we will increment the `value` by `1`. 

However, to be able to increment each value in the hash, we will have to store the transformed hash into a new one. Therefore, we will have `incremented_hash` that will store all incremented `values`.  

The result will be:

```ruby
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
```