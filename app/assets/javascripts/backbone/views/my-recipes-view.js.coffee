window.MyRecipesView = Backbone.View.extend

  events:
    'click .ss-rows' : 'showListView'
    'click .ss-grid' : 'showGridView'
  
  initialize: ->
    @render()
    $('.ss-grid').addClass('active')

  render: ->
    @$el.html JST['backbone/templates/my-recipes']()
    $('.global-container').html @el
    # $('.all-recipe-grid').html @el

    recipes.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)

  showListView: ->
    $('.ss-grid').removeClass('active')
    $('.ss-rows').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/my-recipes']()
    recipes.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-list'](recipe)

  showGridView: ->
    $('.ss-rows').removeClass('active')
    $('.ss-grid').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/my-recipes']()

    recipes.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)