#### Practice Problem 6

Amend this array so that the names are all shortened to just the first three characters:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map do |name|
  name[0, 3]
end
```

