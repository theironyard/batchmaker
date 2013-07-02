window.PantryView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''

    ingredients.each (recipe, index) ->
      $('.global-container').append JST['backbone/templates/ingredients/pantry-grid-item'](recipe.attributes)

  })