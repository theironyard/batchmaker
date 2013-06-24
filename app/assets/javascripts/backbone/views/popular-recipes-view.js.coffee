window.PopularRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering PopularRecipesView'
    $('.global-container').html ''

    popularCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })