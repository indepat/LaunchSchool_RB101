See if the name "Dino" appears in the string below:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

<ins>**Solution**</ins>:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?('Dino')
#=< false because Dino is case sensitive
```

<ins>**LaunchSchool Solution**</ins>:

```ruby
advice.match?("Dino")

# Note that this is not a perfect solution, as it would match any substring with Dino in it.
```