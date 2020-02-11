<ins> **Problem** </ins>	: 

Let's mix it up now with some variation. In the below example, we have  an array of hashes, and we want to select all elements where every key  matches the first letter of the value. Note that the keys are symbols  here, so we'll have to do some conversion before comparison.



```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

Here the `Array#select` method is called on the array `[{ a: 'ant', b: 'elephant' }, { c: 'cat' }]`. Each inner array is passed to the block in turn and assigned to the variable `hash`. The  `Enumerable#all?` method is called on the variable `hash` and passes each element of the collection to the given block. The method returns `true` whether the letter at index `zero` of `value ` is equal to`key` (after being converted to string). 

The inner block will return `true` only if the condition above is fulfilled for each inner array element. And since this is the last evaluated statement of the inner block, it will be used to determine the return of ` Enumerate#all?`.  In this case, only the the second hash will return `true`. Therefore: 



```ruby
 1. { a: 'ant', b: 'elephant' }.all? do |key, value|
     value[0] == key.to_s
	 end
	# false
2. 	{ c: 'cat' }. all? do |key, value|
	 value[0] == key.to_s
	 end
	# true
```

The outer `Array#select` method returns a new array containing all elements of the array for which the given block returns a `true` value. Since the inner block returns a `true` value only for the `second` `hash`, the array containing the `second` hash will be selected only. 