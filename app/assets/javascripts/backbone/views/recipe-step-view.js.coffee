window.RecipeStepView = Backbone.View.extend ({

  events: 
    'click .js-add-step': 'DuplicateStep'

  initialize: ->
    @render()
    new RecipeIngredientView()

  render: ->
    @$el.html JST['backbone/templates/recipe-step-template']()
    # placing recipe step template in a container and instantiating ingredient view
    $('.js-recipe-step-container').html @el

  DuplicateStep: ->
    console.log 'duplicate step function'
    @$el.append JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()
    @$el.find(".chzn-select").chosen()

})