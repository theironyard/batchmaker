CreateNewRecipe = Backbone.View.extend ({

  initialize: ->
    @render( new RecipeIngredientView() )


  })