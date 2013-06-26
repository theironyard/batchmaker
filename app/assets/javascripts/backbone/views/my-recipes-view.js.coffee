window.MyRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    console.log 'Rendering MyRecipesView'
    $('.global-container').html ''

    recipes.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('name')
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })