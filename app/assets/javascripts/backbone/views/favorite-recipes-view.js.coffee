window.FavoriteRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering FavoriteRecipesView'
    $('.global-container').html ''

    favoriteCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })