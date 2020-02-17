#### Question 6

How could the unnecessary duplication in this method be removed?

```ruby
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
```

<ins>**My solution**</ins>:

```ruby
def color_valid(color)
  if color == "blue" || color == "green"
  else
    false
  end
end
```

<ins>**LaunchSchool answer**</ins>: 

```ruby
def color_valid(color)
  color == "blue" || color == "green"
end
```