Given this data structure write some code to return an array containing  the colors of the fruits and the sizes of the vegetables. The sizes  should be uppercase and the colors should be capitalized.



```ruby
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
```

The return value should look like this:

```ruby
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
```

Here, we will iterate through the `hash` by only considering the `value` object from `hsh`. From inside that `value`, we will be able to transform the `value` objects while selecting only `fruits` and `vegetables`. 

```ruby
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
    if value[:type] ==  'fruits'
        value[:colors].map do |color|
         color.capitalize
       end
   elsif value[:type] == 'vegetable'
    value[:size].upcase
   end
end
```

