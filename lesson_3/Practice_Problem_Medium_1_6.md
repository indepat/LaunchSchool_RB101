#### Question 6

What is the output of the following code?

```ruby
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
```

<ins>**Ans**</ins>:

Here we start with answer being `42 `. `answer` is being modified using the method `mess_with_it` which will bring it to being equal to `42 + 8= 50` and assigned to the variable `new_answer`. However the output calls for `answer` which is still 42. Thus the output will be `42 - 8 = 34`.  