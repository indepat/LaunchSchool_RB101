What would you expect the code below to print out?



```ruby
numbers = [1, 2, 2, 3]
numbers.uniq
#=> [1,2,3]
puts numbers
#=> nil
```

`numbers.uniq` will return a new `array` by removing all the duplicate elements but will not modify the `numbers` array.  

