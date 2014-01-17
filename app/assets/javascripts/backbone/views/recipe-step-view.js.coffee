window.RecipeStepView = Support.CompositeView.extend

  initialize: ->
    console.log 'this on?'
    @render()
  
  events: 
    'click .js-add-step': 'duplicateStep'

  render: ->
    console.log 'render'
    @$el.find($('.js-recipe-step-container')).append JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()
    # @$el.html JST['backbone/templates/recipe-step-template']()
    # placing recipe step template in a container and instantiating ingredient view
    # $('.js-recipe-step-container').html @el

    @

  duplicateStep: ->
    console.log 'duplicate step function'
    @$el.append JST['backbone/templates/recipe-step-template']()
    new RecipeIngredientView()
    @$el.find(".chzn-select").chosen()





    # window.RecipeStepView = Support.CompositeView.extend

    #   initialize: ->
    #     @$el.find($('.js-recipe-step-container')).append JST['backbone/templates/recipe-step-template']()
    #     @render()

    #   events: 
    #     'click .js-add-step': 'duplicateStep'

    #   render: ->
    #     # @$el.html JST['backbone/templates/recipe-step-template']()
    #     new RecipeIngredientView()
    #     # placing recipe step template in a container and instantiating ingredient view

    #     @

    #   duplicateStep: ->
    #     console.log 'duplicate step function'
    #     @$el.append JST['backbone/templates/recipe-step-template']()
    #     new RecipeIngredientView()
    #     @$el.find(".chzn-select").chosen()

    #     @