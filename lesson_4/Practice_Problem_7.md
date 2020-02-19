#### Practice Problem 7

What is the **block**'s return value in the following code? How is it determined? Also, what is the return value of `any?` in this code and what does it output?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

<ins>**Solution**</ins>:

The block return value is the last statement expression. In this case, `num.odd?` is the last expression, which turns out to be `true` for odd numbers. In this case, the return value of `any` will be `true`. The output will be [1, 3]. 

<ins>**LaunchSchool**</ins>: 

The return value of the block is determined by the return value of  the last expression within the block. In this case the last statement  evaluated is `num.odd?`, which returns a boolean. Therefore the block's return value will be a boolean, since `Fixnum#odd?` can only return `true` or `false`.

Since the `Array#any?` method returns `true` if the block ever returns a value other than `false` or `nil`, and the block returns `true` on the first iteration, we know that `any?` will return `true`. What is also interesting here is `any?` stops iterating after this point since there is no need to evaluate the remaining items in the array; therefore, `puts num` is only ever invoked for the first item in the array: `1`.

<ins>**Explaining further**</ins>: 

 

```ruby
[1, 2, 3].any? do |num|
  num.odd?
  puts num
end
```

In this case, the last expression of the block is `puts num` which will return a `nil` value. In this case, the `Array#any?` method will return `false`.  The output will be `[1, 2, 3]`. 