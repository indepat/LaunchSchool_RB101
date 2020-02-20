#### Practice Problem 1

Given the array below

```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
```

Turn this array into a hash where the names are the keys and the values are the positions in the array.

<ins>**Solution**</ins>:

```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index { |item, index| 
  flintstones_hash[item] = index
}
```