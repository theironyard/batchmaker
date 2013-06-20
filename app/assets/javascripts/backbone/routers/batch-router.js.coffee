BatchRouter = Backbone.Router.extend({
  
  routes:
    'home': 'dashboard',
    'recipes': 'recipes',
    'newrecipe': 'newrecipe'

  dashboard: ->
    $('.global-container').html JST['app/views/pages/index']

  recipes: (recipeName)->
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/recipe-preview-template']
  
  newrecipe: -> 
    console.log "Create New Recipe Console Log"
    new CreateNewRecipe()
    console.log "CreateNewRecipe instantiated"
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/create-new-recipe-template']  

});

# new instance of TestRouter
batchRouter = new BatchRouter();
# Start Backbone.history - MUST do this
Backbone.history.start({});

$('.logo').click ->
  batchRouter.navigate 'home', trigger => true