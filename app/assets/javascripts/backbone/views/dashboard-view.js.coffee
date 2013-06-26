window.DashboardView = Backbone.View.extend({

  initialize: ->
    
    @render()

  render: ->

    $('.global-container').html JST['backbone/templates/dashboard']()

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    recipes.each (recipe, index) ->
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    publicCollection.each (recipe, index) ->
      $('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    popularCollection.each (recipe, index) ->
      $('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    favoriteCollection.each (recipe, index) ->
      $('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    # This one is a little different bc it isn't a part of Recipe Collection. It's Ingredient Collection.
    # ingredients.each (ingredient, index) ->
    #   $('.my-pantry-row').append JST['backbone/templates/ingredients/pantry-grid-item'](ingredient)
  
})