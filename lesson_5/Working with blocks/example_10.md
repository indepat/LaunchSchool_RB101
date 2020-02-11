Let's say we have the following data structure of nested arrays and we  want to increment every number by 1 without changing the data structure.



```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
```



<ins> **Question:**</ins> What will be the final return value?

Here the `array#map` method is called on the `[[[1, 2], [3, 4]], [5, 6]]`. Each inner array is passed to the block in turn and assigned to the local variable `arr`. The `Array#map` method is called on `arr` where each inner array is passed to the block and assigned to the local variable `el`. The inner `Array#map` will return a new array containing the return value of the inner block, which will be  `integer + 1` if the element is an integer or `element + 1` if the element is an array .  The inner block return value is described below: 



  ```ruby

1) [[[1, 2], [3, 4]].map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end 
    #=> [[[2, 3], [4, 5]]
        
2) [[5, 6]].map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end 
    #=> [[6, 7]] 
  ```

Therefore, the overall return will be `[[[2, 3], [4, 5]], [6, 7]]`.  