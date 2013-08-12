class window.BatchRouter extends Support.SwappingRouter

  initialize: ->
    @el = $('.global-container')
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    '/users/sign_in'  : 'showSignUpSignInPage'
    ''                : 'dashboard'
    'recipes/new'     : 'newRecipe'
    'recipes/public'  : 'showPublic'
    'recipes/popular' : 'showPopular'
    'recipes/mine'    : 'showMine'
    'recipes/:id'     : 'showOneRecipe'
    'step/:id'        : 'showFullscreenRecipeStep'
    'search/:query'   : 'search'
    # 'favoriterecipes' : 'showFavoriteRecipes'
    # 'pantry'          : 'showPantry'

  showSignUpSignInPage: ->
    @swap new SignUpSignInView()
  
  dashboard: ->
    @swap new DashboardView()
  
  newRecipe: -> 
    @swap new RecipeForm()

  showPublic: ->
    @swap new RecipeCategoryView
      collection: Batchmaker.collections.publicCollection
      categoryName: 'Public Recipes'

  showPopular: ->
    @swap new RecipeCategoryView
      collection: Batchmaker.collections.popularCollection
      categoryName: 'Popular Recipes'

  showMine: ->
    @swap new RecipeCategoryView
      collection: Batchmaker.collections.recipes
      categoryName: 'My Recipes'

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