window.MyRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering MyRecipesView'
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/recipes/grid-item']()

    recipes.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })