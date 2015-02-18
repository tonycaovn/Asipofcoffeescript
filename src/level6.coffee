class Coffee
  constructor: (name,level)->
    @name = name
    @level = level
  name: 'Russian'
  level: 2
  isRussian: -> @name is 'Russian'

coffee = new Coffee('thanh',4)

class Coffee
  constructor: (@name, @level = 0) ->
  isRussian: -> @name is 'Russian'


class Coffee extends Drink
  constructor: (@name, @level=0) ->
  serve: ->
    false unless @sleeve

class DrinkLink
  watchClick: ->
    $('a').click ->
      $(@).css
        color: '#F00'




class DrinkLink
  constructor: (@linkClicked=false) ->
  watchClick: ->
    $('.drink a').click (event) =>
      $(event.target).css('color', '#F00')
      @linkClicked = true
