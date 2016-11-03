
# Other Enumerables


### Intro

You should have an understanding of ennumerables. These are methods such as #each, #reject, #find, and #map. take a moment to play with these methods if you are unfamiliar with them at this time.

[Ruby Docs - Enumerable](http://ruby-doc.org/core-2.3.1/Enumerable.html)

All of these methods can be called on an Array. We are adding to the Array class in this exercise to replace these enumerable methods.

### Instructions

* look at the example for #another_each. I have written out the logic used for a basic each loop inside.
* Do not use #each, #reject, #find, and #map to complete this challenge. Instead use the #another_each method and yield to create #another_reject, #another_find, and #another_map
* You are only replicating the core functions of #reject, #find, and #map. Read thir descriptions on Ruby Docs for reference.

### Yield (quick break down)

We are familiar with parameters as a way of passing static values into our methods, like this.

```ruby
  def thing(number)
    number * 2
  end
  
  thing(5) 
  => 10
```

Think of `yield` as a way of passing a runnable block of code into a method.

```ruby
  def thing
    yield
  end
  
  thing { 2 + 2 }
  => 4
  
  thing { "ralph" }
  => "ralph"
```

`yield` runs the block following the method when it is called. let's combine these two concepts.

```ruby
  def thing(number)
    yield(number) # we passing in number to the block
  end
  
  thing(6) { |a| a + 2 }
  => 8
  
  thing(6) { |a| a * 2 }
  => 12
  
  thing(6) { |a| a / 2 }
  => 3
  
  thing(12) { |a| a / 2 }
  => 6
  
  thing(3) { |a| "buck" * a }
  => "buckbuckbuck"
```

Note that when we pass number into the block, it becomes the value of our block variable `a`

Try playing with `yield` alittle before starting this challenge.