window.DashboardView = Backbone.View.extend({

  initialize: ->
    
    @render()

  render: ->

    $('.global-container').html JST['backbone/templates/dashboard']()

    console.log 'recipes = ', recipes

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    recipes.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('name')
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    publicCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('name')
      $('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    popularCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('name')
      $('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    favoriteCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('name')
      $('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    # This one is a little different bc it isn't a part of Recipe Collection. It's Ingredient Collection.
    ingredients.each (ingredient, index) ->
      console.log 'this loop iteration is ', ingredient.get('ingredientName')
      $('.my-pantry-row').append JST['backbone/templates/ingredients/pantry-grid-item'](ingredient)
  
})