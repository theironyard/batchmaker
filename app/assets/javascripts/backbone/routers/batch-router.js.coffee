BatchRouter = Backbone.Router.extend({
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    # ''          : 'showSignUpSignInPage'
    # 'dashboard' : 'dashboard'
    ''          : 'dashboard'
    'recipes'   : 'recipes'
    'recipes/:id'   : 'showOneRecipe'
    'newrecipe' : 'newrecipe'
    'myrecipes' : 'showMyRecipes'
    'publicrecipes' : 'showPublicRecipes'
    'popularrecipes' : 'showPopularRecipes'
    'favoriterecipes' : 'showFavoriteRecipes'
    'pantry' : 'showPantry'

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

  showOneRecipe: ->
    new RecipePreview()

  showPublicRecipes: ->
    new PublicRecipesView()

  showPopularRecipes: ->
    new PopularRecipesView()

  showFavoriteRecipes: ->
    new FavoriteRecipesView()

  showPantry: ->
    new PantryView()

});

# new instance of TestRouter
batchRouter = new BatchRouter();
