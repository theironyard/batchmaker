window.PublicRecipesView = Backbone.View.extend

  initialize: ->
    @render()

  render: ->
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/public-recipes']()

    publicCollection.each (recipe, index) ->
      $('.all-recipe-grid').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)
