#### Practice Problem 3

In the age hash:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```

remove people with age 100 and greater.

<ins>**Solution**</ins>:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! do |_, age|
  age < 100
end
#=> {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
```

<ins>**LaunchSchool Solution**</ins>:

```ruby
ages.keep_if { |_, age| age < 100 }
```

