#### Practice Problem 1

What is the return value of the `select` method below? Why?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

<ins>**Solution**</ins>: 

`select` performs selection based on the *truthiness* of the block's return value. 

Here the return is the last statement of the block which is `'hi'`. Since  `'hi'` will always return a truthy value, the method will return an array containing all the elements in the original array. 

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# => [1, 2, 3]
```