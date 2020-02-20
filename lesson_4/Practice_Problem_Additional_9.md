#### Practice Problem 9

As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something  provided in Rails, but not in Ruby itself...`titleize`. This  method in Ruby on Rails creates a string that has each word capitalised  as it would be in a title. For example, the string:

```ruby
words = "the flintstones rock"
```

would be:

```ruby
words = "The Flintstones Rock"
```

Write your own version of the rails `titleize` implementation.

<ins>**Solution**</ins>: 

```ruby
words = "the flintstones rock"
words_array = words.split(" ")
words_array.each do |word|
  word.capitalize!
end
words_array.join(' ')
```

<ins>**LaunchSchool**</ins>:

```ruby
words.split.map { |word| word.capitalize }.join(' ')
```