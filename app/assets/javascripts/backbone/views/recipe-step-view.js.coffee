window.RecipeStepView = Backbone.View.extend ({

  initialize: ->
    @render( new RecipeIngredientView() )


  })