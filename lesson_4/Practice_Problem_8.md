#### ractice Problem 8

How does `take` work? Is it destructive? How can we find out?

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```

`Take` method returns the first `n` elements from the array. In this case, ` [1, 2]` will be returned. It's non-destructive and the only way to know that is to run the program by calling the variable `arr`. 

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
arr
#=> [1,2]
#=> [1,2, 3, 4, 5]
```