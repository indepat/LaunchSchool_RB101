#### Practice Problem 5

What does `shift` do in the following code? How can we find out?

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```

<ins>**Solution**</ins>: 

Removes  the first key-value pair from *hash* and returns it as the two-item array `[` *key, value* `]`. In this case, the return will be: 

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
#=> [a, 'ant']
hash
#=> [b, 'bear']
```

**Note**: It's destructive. 

