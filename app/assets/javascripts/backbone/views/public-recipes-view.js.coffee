window.PublicRecipesView = Backbone.View.extend

  events:
    'click .ss-rows' : 'showListView'
    'click .ss-grid' : 'showGridView'
  
  initialize: ->
    @render()
    $('.ss-grid').addClass('active')

  render: ->
    @$el.html JST['backbone/templates/public-recipes']()
    $('.global-container').html @el

    publicCollection.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)

  showListView: ->
    $('.ss-grid').removeClass('active')
    $('.ss-rows').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/public-recipes']()
    publicCollection.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-list'](recipe)

  showGridView: ->
    $('.ss-rows').removeClass('active')
    $('.ss-grid').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/public-recipes']()

    popularCollection.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)