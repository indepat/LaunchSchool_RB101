#### Practice Problem 7

Create a hash that expresses the frequency with which each letter occurs in this string:

```ruby
statement = "The Flintstones Rock"
```

ex:

```ruby
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
```

<ins>**LaunchSchool Solution**</ins>:

```ruby
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
```

In this case, we first create a new `hash` called `result`. 

Second we create a new array `letters` that will include all capital and small letters of the alphabet. Next we iterate through `letters` by looking for the frequency by which each letter of `statement` appears. We then include these frequency as value in the `result`.  