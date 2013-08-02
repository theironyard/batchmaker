window.PopularRecipesView = Support.CompositeView.extend

  events:
    'click .ss-rows' : 'showListView'
    'click .ss-grid' : 'showGridView'

  render: ->
    @$el.html JST['backbone/templates/popular-recipes']()
    $('.ss-grid').addClass('active')

    popularCollection.each (recipe, index) =>
      @$el.find('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)
    @

  showListView: ->
    $('.ss-grid').removeClass('active')
    $('.ss-rows').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/popular-recipes']()
    popularCollection.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-list'](recipe)

  showGridView: ->
    $('.ss-rows').removeClass('active')
    $('.ss-grid').addClass('active)')
    $('.all-recipe-container').html ''
    @$el.html JST['backbone/templates/popular-recipes']()

    popularCollection.each (recipe, index) ->
      $('.all-recipe-container').append JST['backbone/templates/recipes/all-recipes-grid'](recipe)