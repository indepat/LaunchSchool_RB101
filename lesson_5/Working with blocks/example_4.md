```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```

Here the `Array#each` (outer) method is called on the multi-dimensional array (variable: my_arr) `[[18, 7], [3, 12]]` .  Each outer array is passed to the block in turn and assigned to the local variable `arr`. The `Array#each` is again called on each local variable `arr` and each inner array is passed to the block and assigned to the local inner-inner variable `num`. The `puts` method outputs the string representation of the integer only `if` the integer is `greater than 5` as per the `if` conditional statement. Therefore, `puts` returns `nil` and since this is the last evaluated statement within the inner block, the return value is therefore `nil`.

The inner  `each` method doesn't do anything with this returned value though, and since the return value of inner `each` is the calling object - this case [18,7,3,12] this is what will be returned.  The calling object of the outer `each` method is the nested array [[18, 7], [3, 12]]- this is what is ultimately returned. 



The answer will be: 

```ruby
 1   my_arr = [[18, 7], [3, 12]].each do |arr|
 2     arr.each do |num|
 3       if num > 5
 4         puts num
 5       end
 6     end
 7   end
 8   # 18
 9   # 7
 10  # 12
 11  #=> [[18, 7], [3, 12]]
```



| Line | Action                | Object                                     | Side Effect                                 | Return Value                                       |                 Is Return Value Used?                  |
| :--: | --------------------- | ------------------------------------------ | ------------------------------------------- | -------------------------------------------------- | :----------------------------------------------------: |
|  1   | variable assignment   | N/a                                        | None                                        | [[18, 7], [3, 12]]                                 |                           No                           |
|  1   | method call (`each`)  | [[18, 7], [3, 12]]                         | None                                        | calling object [[18, 7], [3, 12]]                  |      Yes, used by variable assignment to `my_arr`      |
| 1-7  | outer block execution | Each sub-array                             | None                                        | Each sub-array                                     |                           no                           |
|  2   | method call (`each`)  | Each sub-array                             | None                                        | The calling object: sub-array in current iteration |   Yes, used to determine return value of outer block   |
| 2-6  | inner block execution | Element of the sub-array in that iteration | None                                        | `nil`                                              |                           no                           |
|  3   | comparison (`>`)      | Element of the sub-array in that iteration | None                                        | Boolean                                            |                 Yes, evaluated by `if`                 |
| 3-5  | Conditional (`if`)    | Element of the sub-array in that iteration | None                                        | `nil`                                              |   Yes, used to determine return value of inner block   |
|  4   | method call (`puts`)  | Element of the sub-array in that iteration | Outputs string representation of an Integer | `nil`                                              | Yes, used to determine return value of the inner block |