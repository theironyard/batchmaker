window.DashboardView = Backbone.View.extend({

  events: 
    'click .js-create-new-recipe': 'createNewRecipeView'

  initialize: ->
    @render()

  render: ->
    # $('.global-container').html JST["backbone/templates/dashboard"]()
    # $('.global-container').html '<h1 style="margin-top: 100px; margin-left: 100px">hey a cool thing goes here</h1>'

    console.log 'recipes = ', recipes

    # we should actually pass each recipe into a JST and append it
    # into the page
    recipes.each (recipe, index) ->
      console.log 'this loop iteration is ', recipe.get('recipeName')
      $('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
      $('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
      $('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
      $('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)
      $('.my-pantry-row').append JST['backbone/templates/recipes/grid-item'](recipe.attributes)

  createNewRecipeView: ->
    new CreateNewRecipe()
    $('.global-container').html ''
  
})