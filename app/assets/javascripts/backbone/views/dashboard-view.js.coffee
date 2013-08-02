window.DashboardView = Support.CompositeView.extend

  render: ->
    console.log 'recipes =', recipes
    @$el.html JST['backbone/templates/dashboard']()

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    recipes.each (recipe, index) =>
      @$el.find('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    publicCollection.each (recipe, index) =>
      @$el.find('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    popularCollection.each (recipe, index) =>
      @$el.find('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    favoriteCollection.each (recipe, index) =>
      @$el.find('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
  
    @