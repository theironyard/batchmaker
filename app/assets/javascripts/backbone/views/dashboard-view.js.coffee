window.DashboardView = Support.CompositeView.extend

  render: ->
    @$el.html JST['backbone/templates/dashboard']()

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    Batchmaker.collections.recipes.each (recipe, index) =>
      @$el.find('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    Batchmaker.collections.publicCollection.each (recipe, index) =>
      @$el.find('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    Batchmaker.collections.popularCollection.each (recipe, index) =>
      @$el.find('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    Batchmaker.collections.favoriteCollection.each (recipe, index) =>
      @$el.find('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
  
    @