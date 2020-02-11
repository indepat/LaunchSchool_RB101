

```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
```



```ruby
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
```



```ruby
var = []
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].each do |arr|
  arr.select do |item|
    if item.to_s.to_i == item && item > 13 || item.size < 6  # if it's an integer
    	var << item
    end
  end
end
```





    else
      	item.size < 6
        var << item