#### Question 3

Let's call a method, and pass both a string and an array as  parameters and see how even though they are treated in the same way by  Ruby, the results can be different.

Study the following code and state what will be displayed...and why:

```ruby
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

Here the result will be: 

```ruby
My string looks like this now: pumpkins
My array looks like this now:  ["pumpkins", "rutabaga"]

```

Our output will look like this:

```none
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]
```

Here the `String#+=` operation creates a new string object which is assigned to `a_string_param` . The local variable `a_string_param` now points to `"pumpkinsrutabaga"` . This means that `a_string_param` and `my_string` no longer point to the same object. 

With the array, one array object can have any number of elements.  When we attach an additional element to an array using the `<<` operator, Ruby simply keeps using the same object that was passed in, and appends the new element to it.

So, because the local variable `an_array_param` still points to the original object, the local variables `my_array` and `an_array_param` are still pointing at the same object, and we see the results of what happened to the array "outside" of the method.