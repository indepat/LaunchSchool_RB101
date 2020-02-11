The Ruby Array class has several methods for removing items from the  array. Two of them have very similar names. Let's see how they differ:

```ruby
numbers = [1, 2, 3, 4, 5]
```

What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

```ruby
numbers.delete_at(1)
numbers.delete(1)
```

`numbers.delete(1)`  will delete all items from `numbers` that are equal to `1` and will return `1`. 

```ruby
numbers.delete(1)
#=> 1
numbers
#=> [2, 3, 4, 5]
```

Be careful because the `delete` method is destructive!

For `numbers.delete_at(1)` , the item at index `1` will be deleted and that item will be returned. 

This is will be: 

```ruby
numbers.delete_at(1)
#=> 2
numbers
#=> [1, 3, 4, 5]
```

`delete_at` method is also destructive!



