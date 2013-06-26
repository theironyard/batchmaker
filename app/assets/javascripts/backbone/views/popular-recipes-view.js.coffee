window.PopularRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''

    popularCollection.each (recipe, index) ->
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })