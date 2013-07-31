window.BatchRouter = Backbone.Router.extend({
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    '/users/sign_in'  : 'showSignUpSignInPage'
    # 'dashboard'     : 'dashboard'
    ''                : 'dashboard'
    'recipes'         : 'recipes'
    'recipes/:id'     : 'showOneRecipe'
    'newrecipe'       : 'newrecipe'
    'myrecipes'       : 'showMyRecipes'
    'publicrecipes'   : 'showPublicRecipes'
    'step'            : 'showFullscreenRecipeStep'
    'popularrecipes'  : 'showPopularRecipes'
    'favoriterecipes' : 'showFavoriteRecipes'
    'pantry'          : 'showPantry'

  showSignUpSignInPage: ->
    new SignUpSignInView()
  
  dashboard: ->
    new DashboardView()

  recipes: (id)->
    new RecipePreview()
  
  newrecipe: -> 
    new RecipeForm()

  showMyRecipes: ->
    new MyRecipesView()

  showOneRecipe: (id)->
    # If we have already fetched the recipe, cool
    if recipe = fetchedRecipes.get(id)
      console.log 'first part of the if'
      # just pass the model into the view
      new RecipePreview(model: recipe)
      
    # if we don't have it in fetchModels, let's
    # grab it and add it to the collection and then 
    # pass it into the view.
    else
      console.log 'second part of if'
      recipe = new Recipe(id: id)
      recipe.fetch success: (recipe) ->
        fetchedRecipes.add(recipe)
        new RecipePreview(model: recipe)

  showPublicRecipes: ->
    new PublicRecipesView()

  showFullscreenRecipeStep: ->
    new FullscreenRecipeStepView()

  showPopularRecipes: ->
    new PopularRecipesView()

  showFavoriteRecipes: ->
    new FavoriteRecipesView()

  showPantry: ->
    new PantryView()

});


