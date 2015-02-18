#1
[1..10]
#2
[1...11]
#3
coffee = 
 name: 'Russian'
 level: 2,
 isRussian: true
#4
 for person in people
  console.log(person.name) if person.age > 18

#5
  console.log(p) for p in people when p.age > 18

#6
  addCoffee(coffee) for coffee in coffeeList when not coffee.isRussian?()

#7
displayTopPicks = (bestCoffee, suggested ...) ->
  alert('Top #1 ' + bestCoffee)
  alert('Suggested: ' + suggested)

suggested.join(", ")