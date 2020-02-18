#### Practice Problem 3

What is the return value of `reject` in the following code? Why?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

<ins>**Solution**</ins>: 

The `array#reject` returns a new array containing the items for which the given block is not `true` (being false or nil). In this case, `puts ` method always returns `nil`. Therefore, a new array will be return showing all elements. 

```ruby
[1, 2, 3].reject do |num|
  puts num
end
# => [1, 2, 3]
```

<ins>**Addendum**</ins>:

In this case, suppose we had this type of problem, what will be the return value?

```ruby
[1, 2, 3].reject do |num|
 	num
end
```

Since all elements will return a `true` value in the block, no element will be selected by the `Array#reject` method. An empty array will be returned. 

```ruby
[1, 2, 3].reject do |num|
  num
end
#=> []
```

