#### Practice Problem 2

How does `count` treat the block's return value? How can we find out?

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

<ins>**Solution**</ins>: 

The `Array#count` method counts the number of elements for which the block returns a true value. IN this case, each element will be checked and the element with fewer than 4 characters will be returned. 

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
#=> ['ant', 'bat']
```