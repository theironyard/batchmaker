window.RecipeForm = Support.CompositeView.extend
  
  template: JST["backbone/templates/recipe-info-template"]

  render: ->    
    # inserting recipe info template in global container
    # recipe info template has the rest of the recipe form inside of it
    @$el.html @template()

    # instantiating step view to call in the step template which hosts ingredient view.
    JST["backbone/templates/recipe-info-template"]()
    new RecipeStepView()
    
    # calling the chosen plugin down here to ensure the page doesn't quit loading before the plugin gets working
    $(".chzn-select").chosen()

    @
