window.FavoriteRecipesView = Support.CompositeView.extend({

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''

    favoriteCollection.each (recipe, index) ->
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })