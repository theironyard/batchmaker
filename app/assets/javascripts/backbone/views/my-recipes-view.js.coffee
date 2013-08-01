window.MyRecipesView = Backbone.View.extend

  events:
    'click .ss-rows' : 'showListView'
  
  initialize: ->
    @render()
    $('.ss-grid').addClass('active')

  render: ->
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/my-recipes']()

    recipes.each (recipe, index) ->
      $('.all-recipe-grid').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)

  showListView: ->
    console.log 'clicked it'
    $('.ss-rows').addClass('active)')
    $('.all-recipe-grid').html ''
    $('.all-recipe-grid').append JST['backbone/templates/recipes/all-recipes-list'](recipe)
