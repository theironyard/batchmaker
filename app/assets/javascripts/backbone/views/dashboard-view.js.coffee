window.DashboardView = Support.CompositeView.extend

  initialize: ->
    @render()

  render: ->
    # @$el.html JST['backbone/templates/recipe-category']( categoryName: @categoryName )
    @$el.html JST['backbone/templates/dashboard']()

    # Loops through appropriate instance of Recipe Collection
    # and gets name and appends it to specified div and applies appropriate JST
    @collection.recipes.each (recipe, index) =>
      @$el.find('.my-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.publicCollection.each (recipe, index) =>
      @$el.find('.public-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.popularCollection.each (recipe, index) =>
      @$el.find('.popular-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)
    
    @collection.favoriteCollection.each (recipe, index) =>
      @$el.find('.favorite-recipes-row').append JST['backbone/templates/recipes/grid-item'](recipe)

    @