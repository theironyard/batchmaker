BatchRouter = Backbone.Router.extend({
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    # ''          : 'showSignUpSignInPage'
    # 'dashboard' : 'dashboard'
    ''          : 'dashboard'
    'recipes'   : 'recipes'
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
    console.log 'dashboard called from router'

  recipes: (recipeName)->
    new RecipePreview()
    console.log 'RecipePreview called from router'
  
  newrecipe: -> 
    new RecipeForm()
    console.log "new recipe called from router"

  showMyRecipes: ->
    new MyRecipesView()

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
