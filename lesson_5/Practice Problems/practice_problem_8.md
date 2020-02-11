Using the `each` method, write some code to output all of the vowels from the strings.



```ruby
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
```

Here we will first iterate through the hash to access the arrays and then iterate through each array to access each string. 

```ruby
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
	value.each do |string|
    string.chars.each do |char|
      puts char if 'aeiou'.include?(char)
      end 
    end
   end
 end
```



