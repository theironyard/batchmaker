window.PantryView = Support.CompositeView.extend({

  initialize: ->
    @render()

  render: ->
    $('.main-container').html ''

    ingredients.each (recipe, index) ->
      $('.main-container').append JST['backbone/templates/ingredients/pantry-grid-item'](recipe.attributes)

  })