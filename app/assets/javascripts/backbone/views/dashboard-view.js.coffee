window.DashboardView = Backbone.View.extend({

  events: 
    'click .js-create-new-recipe': 'createNewRecipeView',

  initialize: ->
    
    @render()

  render: ->

    console.log 'recipes = ', recipes

    # Loops through Recipe Collection and different instances of that collection
    # and gets recipeName and appends it to specified div and applies appropriate JST
    recipes.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
    
    publicCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
    
    popularCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
    
    favoriteCollection.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
    
    # This one is a little different bc it isn't a part of Recipe Collection. It's Ingredient Collection.
    ingredients.each (ingredient, index) ->
      console.log 'this loop iteration is ', ingredient.get('ingredientName')
      $('.my-pantry-row').append JST['backbone/templates/ingredients/pantry-grid-item'](ingredient.attributes)

  createNewRecipeView: ->
    new CreateNewRecipe()
    $('.global-container').html ''
    $('.global-container').append( CreateNewRecipe() )
  
})