window.RecipeForm = Support.CompositeView.extend

  initialize: ->
    $('.main-container').html ''
  
  render: ->
    # inserting recipe info template in main container
    # recipe info template has the rest of the recipe form inside of it
    new RecipeStepView()
    @$el.html JST["backbone/templates/recipe-info-template"]

    JST["backbone/templates/recipe-info-template"]()
    # instantiating step view to call in the step template which hosts ingredient view.
    console.log 'RecipeStepView called'
    
    # calling the chosen plugin down here to ensure the page doesn't quit loading before the plugin gets working
    @$el.find(".chzn-select").chosen()

    @
