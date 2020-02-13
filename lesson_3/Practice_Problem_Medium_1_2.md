#### Question 2

The result of the following statement will be an error:

```ruby
puts "the value of 40 + 2 is " + (40 + 2)
```

Why is this and what are two possible ways to fix this?

<ins>**Solution**</ins>: 

*Why is this*? 

When we put `+` we are trying to concatenate two strings here: `"the value of 40 + 2 is "` and `(40 + 2)`. Since `(40 + 2)` is not a string, the `puts` method return an error.

_Fix this_: 

- We can either convert ``(40 + 2)` into a string: `(40 + 2).to_s`

- Using string interpolation:  

  ```ruby
  puts "the value of 40 + 2 is #{40 + 2}"
  ```

!!! hint Hint

Most programmers prefer using interpolation instead of concatenation

!!!

