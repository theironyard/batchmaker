BatchRouter = Backbone.Router.extend({
  
  # my app view is the header and sidebar
  # dashboard is first view called making it index.html
  routes:
    '': 'dashboard',
    'recipes': 'recipes',
    'newrecipe': 'newrecipe'
    'myrecipes': 'showMyRecipes'

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
    new MyRecipesView

});

# new instance of TestRouter
batchRouter = new BatchRouter();
# Start Backbone.history - MUST do this
$ ->
  Backbone.history.start({});