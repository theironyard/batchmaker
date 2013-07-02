window.PublicRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''

    publicCollection.each (recipe, index) ->
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })