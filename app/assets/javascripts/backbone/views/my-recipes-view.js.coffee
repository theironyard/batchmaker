window.MyRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    # $('.main-container').html ''

    recipes.each (recipe, index) ->
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)

  })