window.PublicRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering PublicRecipesView'
    $('.global-container').html ''

    publicCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.global-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })