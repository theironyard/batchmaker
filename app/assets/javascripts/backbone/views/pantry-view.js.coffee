window.PantryView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering PantryView'
    $('.global-container').html ''

    ingredients.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.global-container').append JST['backbone/templates/ingredients/pantry-grid-item'](recipe.attributes)

  })