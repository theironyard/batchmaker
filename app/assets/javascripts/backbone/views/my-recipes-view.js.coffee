window.MyRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''

    recipes.each (recipe, index) ->
      $('.global-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)

  })