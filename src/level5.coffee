# jQuery(function($){
#   $('.drink a').click(function(){
#     var newStyle = {
#       'color': '#F00',
#       'font-weight': 'bold'
#     };
#     $(this).css(newStyle)
#   });
# });
#1
->
  $('.drink a').click ->
    newStyle
      'color':'#F00',
      'font-weight': 'bold'
    $(@).css(newStyle)

#2
coffeeList =
  init: ->
    $('.drink a').click (e) ->
      e.preventDefault()
      alert $(@).text()

coffeeList.init( )

# $.ajax({
#   url: '/coffeeList',
#   method: 'GET',
#   success: function(results) {
#     var i = null
#       , coffee = null;
#     for (i = 0; i < results.length; i++) {
#       coffee = results[i];
#       if (coffee.level > 3) {
#         $('ul.drink').append("<li>" + coffee.name + "</li>")
#       }
#     }
#   },
#   error: function(results) {
#     alert("failure " + results);
#   }
# });

#3

$.ajax
  url: '/coffeeList',
  method: 'GET',
  success: (results) -> 
    i = null
    $('ul.drink').append("<li>#{i}</li>") for i in results when i.level > 3
  error: (results) ->
    alert("failure #{results}");