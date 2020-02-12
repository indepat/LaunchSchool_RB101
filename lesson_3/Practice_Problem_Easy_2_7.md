In the previous practice problem we added Dino to our array like this:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```

We could have used either `Array#concat` or `Array#push` to add Dino to the family.

How can we add multiple items to our array?  (Dino and Hoppy)

<ins>**Solution**</ins>: 

``` ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino" << "Hoppy"
#=> ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]
```

<ins>**LaunchSchool Solution**</ins>: 

```ruby
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
```

or

```ruby
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
```