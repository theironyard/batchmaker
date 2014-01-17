window.DashboardView = Support.CompositeView.extend

  initialize: ->
    @render()

  render: ->
    $('.main-container').html ''
    
    $('.main-container').html JST['backbone/templates/dashboard']()

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    @collection.recipes.each (recipe, index) =>
      $('.main-container').find('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.publicCollection.each (recipe, index) =>
      $('.main-container').find('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.popularCollection.each (recipe, index) =>
      $('.main-container').find('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.favoriteCollection.each (recipe, index) =>
      $('.main-container').find('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)