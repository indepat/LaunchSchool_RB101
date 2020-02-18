#### Practice Problem 4

What is the return value of `each_with_object` in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

<ins>**Solution**</ins>: 

Here the `Enumerator#each_with_object` method will iterate the block and transform the `array` into an `hash` where key will be the first letter of each element. 

We will have: 

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
#=> { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
```

