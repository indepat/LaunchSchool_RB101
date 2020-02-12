Starting with the string:

```ruby
famous_words = "seven years ago..."
```

show two different ways to put the expected "Four score and " in front of it.

<ins>**First method**</ins>: 

```ruby
famous_words = "seven years ago..."

famous_words.insert(0, 'Four score and ')
#=> "Four score and seven years ago..."
```



<ins>**Second method**</ins>: 

```ruby
famous_words = "seven years ago..."

'Four score and ' << famous_words
#=> "Four score and seven years ago..."
```



