window.RecipeStepView = Backbone.View.extend ({

  event: 
    'click .add-step-button': 'DuplicateStep'
  initialize: ->
    @render()

  render: ->
    # placing recipe step template in a container and instantiating ingredient view
    $('.js-recipe-step-container').html JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()

  DuplicateStep: ->
    console.log 'fuck'
    $('.js-recipe-step-container').append JST['backbone/templates/recipe-step-template']()

})