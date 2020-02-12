Given the hash below

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
```

Turn this into an array containing only two elements: Barney's name and Barney's number

<ins>**My solution**</ins>:

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! do |key, variable|
  key == 'Barney'
end
flintstones.to_a.flatten!
#=> ["Barney", 2]
```

<ins>**LaunchSchool solution**</ins>:

```ruby
flintstones.assoc("Barney")
#=> ["Barney", 2]
```