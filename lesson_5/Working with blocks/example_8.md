This is a showcase of a small modification for the example 8. 

<ins> **Example 8** </ins> shows this:

```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]
```

In this example we only want to select integers greater than 13 but strings less than 6 characters. The trick here is that the elements are in a two layer nested array data structure.

We first need to access the nested arrays before we can select the value we want. One of the main reasons `map` is used in this example is not  only to iterate over the array and access the nested arrays, but to  return a new array containing the selected values. 

If we used `each` instead we wouldn't have the desired return value, and would need an extra variable to collect the desired results. This would be the solution by creating `var` as the variable which collect the selected selection: 

```ruby
var = []
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].each do |arr|
  arr.select do |item|
    if item.to_s.to_i == item && item > 13 || item.size < 6  # if it's an integer || a    															string less than 6 characters
    	var << item
    end
  end
end
```

