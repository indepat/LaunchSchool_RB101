#### Question 2

What is the result of the last line in the code below?

```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
```

<ins>**Solution**</ins>:

The last line will output: `{ :a => 'hi there'}`. The reason is that `informal_greeting` is a reference to the original object. Since `informal_greeting` was modified by `string#<<`, the origina object was changed too, impacting the value in `greetings`. 