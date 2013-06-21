BatchRouter = Backbone.Router.extend({
  
  routes:
    '': 'dashboard',
    'recipes': 'recipes',
    'newrecipe': 'newrecipe'

  dashboard: ->
    new DashboardView()
    console.log 'dashboard called from router'

  recipes: (recipeName)->
    new RecipePreview()
    console.log 'RecipePreview called from router'
  
  newrecipe: -> 
    new RecipeForm()
    console.log "new recipe called from router"

});

# new instance of TestRouter
batchRouter = new BatchRouter();
# Start Backbone.history - MUST do this
$ ->
  Backbone.history.start({});