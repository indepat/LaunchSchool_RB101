How would you order this array of number strings by descending numeric value?

```ruby
arr = ['10', '11', '9', '7', '8']
```

Here I would perform an `array#sort` to get the return value as the descending numeric value: 

```ruby
arr = ['10', '11', '9', '7', '8']
arr.sort do |str_1, str_2|
  str_2.to_i <=> str_1.to_i 
end
#=> ["11", "10", "9", "8", "7"]
```

If we didn't include `string#to_i` we would have the strings sorted without being converted. In this case since strings are compared character by character, `"9"`  will be the highest and `"10"` will be the lowest:

```ruby
arr = ['10', '11', '9', '7', '8']
arr.sort do |str_1, str_2|
  str_2 <=> str_1
end
#=> ["9", "8", "7", "11", "10"] 
```



