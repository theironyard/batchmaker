window.RecipeForm = Backbone.View.extend ({

  initialize: ->

    window.recipeInfoTemplate = JST["backbone/templates/recipe-info-template"]

    @render()

    # just psuedo code
    # this works for empty models or dataful models
    # @model.get('steps').each (step) ->
    #   new RecipeStepView(step)

  render: ->
    console.log "RecipeForm instantiated. Just the main info at top."
    $('.global-container').html ''
    $('.global-container').html recipeInfoTemplate()
    console.log 'RecipeInfoView and RecipeStepView are called from RecipeForm'
    new RecipeInfoView()
    new RecipeStepView()
    $(".chzn-select").chosen()

  })