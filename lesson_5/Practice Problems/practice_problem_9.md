Given this data structure, return a new array of the same structure but  with the sub arrays being ordered (alphabetically or numerically as  appropriate) in descending order.

```ruby
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
```

Here I will iterate through the arrays and will transform each inner `array` by sorting them by descending order. 

The result will be below:

```ruby
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.map do |array|
  array.sort do |a, b|
    b <=> a
  end
end
```



