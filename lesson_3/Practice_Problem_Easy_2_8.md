Shorten this sentence:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

...remove everything starting from "house".

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
advice.delete_suffix('house training your pet dinosaur.')
#=> "Few things in life are as important as "
```



Review the [String#slice!](http://ruby-doc.org/core/String.html#method-i-slice-21) documentation, and use that method to make the return value `"Few things in life are as important as "`. But leave the `advice` variable as `"house training your pet dinosaur."`.

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0..38)
#=> "Few things in life are as important as "
advice
#=> "house training your pet dinosaur."
```

<ins>**LaunchSchool Solution**</ins>: 

```ruby
advice.slice!(0, advice.index('house'))
```

As a bonus, what happens if you use the [String#slice](http://ruby-doc.org/core/String.html#method-i-slice) method instead?

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice(0..38)
#=> "Few things in life are as important as "
advice
#=> "Few things in life are as important as house training your pet dinosaur."
```

When using method `string#slice`, we will not change the array `advice`. It's not destructive. 