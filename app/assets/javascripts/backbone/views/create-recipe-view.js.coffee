CreateNewRecipe = Backbone.View.extend ({

  initialize: ->
    @render( new RecipeInfoView() )
    @render( new RecipeStepView() )
    # @render( new RecipeIngredientView() )


  })