

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```

Map out a detailed breakdown for the above example

Here the `Array#map` method is called on the multi-dimensional 
array `[[1, 2], [3, 4]]`. Each inner array is passed to the block in turn and assigned to the variable `arr`. The `Array#first` method is called on `arr` and returns the object at index `zero` of the current array - in this case `1` and `3` respectively. The `puts` method then outputs a string representation of the integer and puts returns `nil`. The `Array#first` method is called again on `arr` as the last evaluated statement in the block, and since the return value of `map` is the return value of the block, the new array `[1, 3]` is what will be returned. 

So this will be the result: 

```ruby
1    [[1, 2], [3, 4]].map do |arr|
2     puts arr.first
3     arr.first
4     end
5     # 1
6     # 2
7     #=> [1, 3]
```



| Line | Action                | Object                          | Side Effect                                 | Return Value                    |            Is Return Value Used?             |
| :--: | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | :------------------------------------------: |
|  1   | method call (`map`)   | The outer array                 | None                                        | New array: [1, 3]               |                      No                      |
| 1-3  | block execution       | Each sub-array                  | None                                        | Integer at index o of sub-array |    Yes, used by `map` for transformation     |
|  2   | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array |             Yes, used by `puts`              |
|  2   | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an Integer | `nil`                           |                      No                      |
|  3   | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used to determine return value of block |





