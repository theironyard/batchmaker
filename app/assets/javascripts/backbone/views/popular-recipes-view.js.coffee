window.PopularRecipesView = Backbone.View.extend({

  initialize: ->
    @render()

  render: ->
    # $('.main-container').html ''

    popularCollection.each (recipe, index) ->
      $('.main-container').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  })