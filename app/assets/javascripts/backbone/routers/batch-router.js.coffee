class window.BatchRouter extends Support.SwappingRouter

  initialize: ->
    @el = $('.global-container')
  
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
    'popularrecipes'  : 'showPopularRecipes'
    'step/:id'        : 'showFullscreenRecipeStep'
    'search/:query'   : 'search'
    # 'favoriterecipes' : 'showFavoriteRecipes'
    # 'pantry'          : 'showPantry'

  showSignUpSignInPage: ->
    @swap new SignUpSignInView()
  
  dashboard: ->
    @swap new DashboardView()

  recipes: (id)->
    @swap new RecipePreview()
  
  newrecipe: -> 
    @swap new RecipeForm()

  showMyRecipes: ->
    @swap new MyRecipesView()

  showPublicRecipes: ->
    @swap new PublicRecipesView()
    
  showPopularRecipes: ->
    @swap new PopularRecipesView()

  showOneRecipe: (id)->
    # If we have already fetched the recipe, cool
    if recipe = fetchedRecipes.get(id)
      # just pass the model into the view
      @swap new RecipePreview(model: recipe)
      
    # if we don't have it in fetchModels, let's
    # grab it and add it to the collection and then 
    # pass it into the view.
    else
      recipe = new Recipe(id: id)
      recipe.fetch success: (recipe) =>
        fetchedRecipes.add(recipe)
        @swap new RecipePreview(model: recipe)

  showFullscreenRecipeStep: ->
    @swap new FullscreenRecipeStepView()

  search: ->
    @