Given the following data structure, and **without** using the `Array#to_h` method, write some code that will return a hash where the key is the  first item in each sub array and the value is the second item.



```ruby
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
```

Here we will iterate through the `array` and set each iteration a variable name `item` which will be used to describe the `key` and value for the new transformed `hash`. 

```ruby
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
arr_hash = {}
arr.each do	|item|
    arr_hash[item[0]] = item[1]
end
arr_hash
```



To further explain the implication of this code, let's say we would like to have each `item` being it's own `key` and `value`, we will have to do this: 

```ruby
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
arr_hash = {}
arr.each do	|item|
    arr_hash[item] = item
end
arr_hash
#=> {[:a, 1]=>[:a, 1], ["b", "two"]=>["b", "two"], ["sea", {:c=>3}]=>["sea", {:c=>3}], [{:a=>1, :b=>2, :c=>3, :d=>4}, "D"]=>[{:a=>1, :b=>2, :c=>3, :d=>4}, "D"]}
```



