window.FavoriteRecipesView = Support.CompositeView.extend({

  initialize: ->
    @render()

  render: ->
    $('.main-container').html ''

    favoriteCollection.each (recipe, index) ->
      $('.main-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })