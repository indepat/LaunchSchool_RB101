Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically  by only taking  into consideration the *odd* numbers they contain.

```ruby
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
```

The sorted array should look like this:

```ruby
[[1, 8, 3], [1, 6, 7], [1, 4, 9]]
```

The answer will be: 

```ruby
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |array|
    array.select  do |arr|
      arr.odd?
    end
end
```

