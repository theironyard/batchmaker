# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('h1').addClass('red')

  template = JST["templates/test-template"]
    name: 'The Iron Yard'
    description: 'A really hard class'

  array = [1,3,4,5]

  $.each array, (index, value) -> 

    $('.test-div').html template