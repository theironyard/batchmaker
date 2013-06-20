window.CreateNewRecipe = Backbone.View.extend ({

  initialize: ->

    window.createNewRecipeTemplate = JST["backbone/templates/create-new-recipe-template"]

    @render()
    # @render( new window.RecipeInfoView() )
    # @render( new window.RecipeStepView() )
    # @render( new RecipeIngredientView() )

  render: ->
    console.log 'Create new recipe view'
    # @this.html('')
    $('.global-container').append( "<h1>Hello this is create new recipe</h1>" )


  })