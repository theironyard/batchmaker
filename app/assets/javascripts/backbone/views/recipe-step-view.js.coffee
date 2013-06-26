window.RecipeStepView = Backbone.View.extend ({

  initialize: ->
    @render()

  render: ->
    # placing recipe step template in a container and instantiating ingredient view
    $('.js-recipe-step-container').html JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()

})