Given the following data structure use a combination of methods, including either the `select` or `reject` method, to return a new array identical in structure to the original but containing only the integers that are multiples of `3`.



```ruby
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
```

Here I will iterate through the `arr` and then for each inner `array` I would only select the `variable` that are multiple of `3`. 

The result will be: 

```ruby
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |array|
  array.select do |variable|
    variable % 3 ==0
  end
end
```





