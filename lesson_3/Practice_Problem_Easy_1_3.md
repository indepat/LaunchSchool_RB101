Replace the word "important" with "urgent" in this string:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

<ins> **Solution**</ins>: 

Here is will use the `string#gsub` method: 

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub("important", "urgent")
#=> "Few things in life are as urgent as house training your pet dinosaur."
```

