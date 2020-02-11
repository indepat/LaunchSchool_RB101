Here is another complex example: 

```ruby
1    [[1, 2], [3, 4]].map do |arr|
2      arr.map do |num|
3        num * 2
4      end
5     end
```

What will the return value be in this example?

The `map` method is called on the multi-dimensional array [[1, 2], [3, 4]]. Each inner array is passed to the block in turn and assigned to the local variable `arr`.  However another `Array#map` method is called on the `arr` variable whereby each sub-inner array is passed to the block in turn and assigned to the local variable `num`. The return value of each variable `num` is being multiplied by 2 and since this the last valuated return, the return value of the block is `num` multiplied by `2`. The inner `map` transforms the return value of the block   and returns a new array which will be [2,4,6,8]. The outer `map` transforms the return value of the inner block and returns a new array which will be [[2, 4], [6, 8]] and this will the the ultimate return. 



| Line | Action                | Object                          | Side Effect                                 | Return Value                    |            Is Return Value Used?             |
| :--: | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | :------------------------------------------: |
|  1   | method call (`map`)   | [[1, 2], [3, 4]]                | None                                        | New array: [[2, 4], [6, 8]]     |                      No                      |
|  2   | method call (`map`)   | Each sub-array                  | None                                        | New array: [2,4,6,8]            |          Yes, used by method `map`           |
|  2   | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an Integer | `nil`                           |                      No                      |
|  3   | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used to determine return value of block |





