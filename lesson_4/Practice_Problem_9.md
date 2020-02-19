#### Practice Problem 9

What is the return value of `map` in the following code? Why?

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

<ins>**Solution**</ins>: 

`map` method returns a new array with the results of running the block once for every element. The last expression of the block is `value` that has more than 3 characters. Therefore, the return value of `map` method should be  `['bear']`. However, since `map` method runs for each one of the element, even for `value` that don't have more than 3 characters, the `nil` value will still be returned in the `array`. In this case, the final return will be `[nil, 'bear']`. 