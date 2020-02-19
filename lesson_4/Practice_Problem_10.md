#### Practice Problem 10

What is the return value of the following code? Why?

```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

<ins>**Solution**</ins>: 

Here the `map` method returns a new array with the result of the block once for every element in the block. The result of the block will be `num` for an element which is more than `1` and `nil`(since pus method returns `nil`) for each element that is not more than `1`. 

The return value will be: `[1, nil, nil]`. 

