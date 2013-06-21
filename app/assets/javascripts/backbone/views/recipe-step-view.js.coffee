window.RecipeStepView = Backbone.View.extend ({

  initialize: ->
    console.log 'Initializing RecipeIngredientView'
    @render()

  render: ->
    $('.js-recipe-step-container').html JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()

})