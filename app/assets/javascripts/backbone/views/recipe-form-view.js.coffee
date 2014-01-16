window.RecipeForm = Backbone.View.extend ({

  initialize: ->

    window.recipeInfoTemplate = JST["backbone/templates/recipe-info-template"]

    @render()

    # just psuedo code
    # this works for empty models or dataful models
    # @model.get('steps').each (step) ->
    #   new RecipeStepView(step)

  render: ->

    # clearing the dashboard out of global container
    $('.main-container').html ''
    
    # inserting recipe info template in global container
    # recipe info template has the rest of the recipe form inside of it
    $('.main-container').html recipeInfoTemplate()

    # running this template here because its whole job is to host recipe set template
    recipeInfoTemplate()
    # instantiating step view to call in the step template which hosts ingredient view.
    new RecipeStepView()
    
    # calling the chosen plugin down here to ensure the page doesn't quit loading before the plugin gets working
    $(".chzn-select").chosen()

  })