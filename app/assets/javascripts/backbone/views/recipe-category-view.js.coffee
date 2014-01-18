window.RecipeCategoryView = Support.CompositeView.extend
  
  events:
    'click .js-recipe-list' : 'showListView',
    'click .js-recipe-grid' : 'showGridView',
    'click .delete-recipe'  : 'deleteRecipe'

  initialize: (options) ->
    @categoryName = options.categoryName
    # recipe = this.recipe
    console.log this
    # console.log recipe.length()

  render: (option = "list") ->
    @$el.html JST['backbone/templates/recipe-category']( categoryName: @categoryName )
    @collection.each (recipe, index) =>
      @$el.find('.all-recipe-container').append JST["backbone/templates/recipes/all-recipes-#{option}"](recipe)
    $(".js-recipe-#{option}").toggleClass "active"

    
    @

  showListView: ->
    @render('list')
    
  showGridView: ->
    @render('grid')

  editRecipe: ->
    console.log 'edit clicked'
  
  deleteRecipe: ->
    console.log 'delete clicked'
    console.log recipe.length()

    recipe.destroy
      success: (recipe, response) ->
        console.log "you deleted it"

      error: (recipe, response) ->
        console.log "you did not"

    @$el.html ''
    new AppView()
