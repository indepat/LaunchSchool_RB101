#### Question 1

Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the  following output 10 times, with the subsequent line indented 1 space to  the right:

```ruby
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
```

In this case, we are using the `integer` object to perform the repetition: 

```ruby
10.times {|number| puts (' '*number) + 'The Flintstones Rock!'}
```

