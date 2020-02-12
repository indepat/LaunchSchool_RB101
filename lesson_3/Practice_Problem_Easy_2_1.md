In this hash of people and their age,

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```

see if "Spot" is present.

**Bonus:** What are two other hash methods that would work just as well for this solution?

We can use: 

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("spot")
#=> false
```

Or we can use: 

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("spot")
#=> false
```

or we can use: 

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.member?("spot")
#=> false
```



