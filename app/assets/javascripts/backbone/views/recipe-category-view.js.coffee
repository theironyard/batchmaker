window.RecipeCategoryView = Support.CompositeView.extend

  events:
    'click .ss-rows' : 'showListView'
    'click .ss-grid' : 'showGridView'

  initialize: (options) ->
    @categoryName = options.categoryName

  render: (option = "grid") ->
    @$el.html JST['backbone/templates/recipe-category']( categoryName: @categoryName )
    @$(".js-recipe-#{option}").addClass('active')

    @collection.each (recipe, index) =>
      @$el.find('.all-recipe-container').append JST["backbone/templates/recipes/all-recipes-#{option}"](recipe)
    @

  showListView: ->
    @render('list')
    
  showGridView: ->
    @render('grid')
