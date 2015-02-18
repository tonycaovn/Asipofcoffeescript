person = "Thanh"
greet = ->
  alert('Hello CoffeeScript')

greet = (a)->
  alert "Hello CoffeeScript #{a}"

greet = (a,b)->
  alert "Hello CoffeeScript #{a}"

greet = (name = 'Stranger') -> alert name

greet = (name='Stranger') ->
  "Hello, #{name}"

sum = (a,b)->
  a + b