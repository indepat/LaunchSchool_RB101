#### Practice Problem 2

Add up all of the ages from the Munster family hash:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 
```

<ins>**Solution**</ins>: 

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 
ages.values.sum
#=> 6174 
```

<ins>**LaunchSchool**</ins>: 

```ruby
total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174
```