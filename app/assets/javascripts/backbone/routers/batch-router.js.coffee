class window.BatchRouter extends Support.SwappingRouter

  initialize: ->
    @el = $('.main-container')
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    ''                : 'dashboard'
    'recipes/new'     : 'newRecipe'
    'recipes/public'  : 'showPublic'
    'recipes/popular' : 'showPopular'
    'recipes/favorite' : 'showFavorite'
    'recipes/mine'    : 'showMine'
    'recipes/:id'     : 'showOneRecipe'
    'step/:id'        : 'showFullscreenRecipeStep'
    'search/:query'   : 'search'
    # 'pantry'          : 'showPantry'

  showSignUpSignInPage: ->
    @swap new SignUpSignInView()
  
  dashboard: ->
    @swap new DashboardView
      collection: Batchmaker.collections
  
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

  showFavorite: ->
    @swap new RecipeCategoryView
      collection: Batchmaker.collections.favoriteCollection
      categoryName: 'Favorite Recipes'

  showMine: ->
    @swap new RecipeCategoryView
      collection: Batchmaker.collections.recipes
      categoryName: 'My Recipes'

  showOneRecipe: (id)->
    # If we have already fetched the recipe, cool
    if recipe = Batchmaker.collections.recipes.get(id)
      # just pass the model into the view
      @swap new RecipePreview(model: recipe)
      
    # if we don't have it in fetchModels, let's
    # grab it and add it to the collection and then 
    # pass it into the view.
    else
      recipe = new Recipe(id: id)
      recipe.fetch success: (recipe) =>
        Batchmaker.collections.recipes.add(recipe)
        @swap new RecipePreview(model: recipe)

  showFullscreenRecipeStep: ->
    @swap new FullscreenRecipeStepView()

  # search: ->
  #   @