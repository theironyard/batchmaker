window.RecipeCategoryView = Support.CompositeView.extend
  
  events:
    'click .js-recipe-rows' : 'showListView'
    'click .js-recipe-grid' : 'showGridView'

  initialize: (options) ->
    @categoryName = options.categoryName

  render: (option = "list") ->
    @$(".js-recipe-#{option}").addClass('active')

    @$el.html JST['backbone/templates/recipe-category']( categoryName: @categoryName )
    @collection.each (recipe, index) =>
      @$el.find('.all-recipe-container').append JST["backbone/templates/recipes/all-recipes-#{option}"](recipe)
    @

  showListView: ->
    @render('list')
    
  showGridView: ->
    @render('grid')
