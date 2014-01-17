window.RecipeForm = Support.CompositeView.extend

  initialize: ->
    @render()
    @$el.html ''
    @recipe = new Recipe()

  events: ->
    'click .save-recipe': 'saveRecipe',
    'change input': 'updateEvent',
    'change select': 'updateEvent'
  
  render: ->
    # inserting recipe info template in main container
    # recipe info template has the rest of the recipe form inside of it
    @$el.html JST["backbone/templates/recipe-info-template"]()
    new RecipeStepView()
    # instantiating step view to call in the step template which hosts ingredient view.
    
    # calling the chosen plugin down here to ensure the page doesn't quit loading before the plugin gets working
    @$el.find(".chzn-select").chosen()

    @

  updateEvent: (evt) ->
    target = $(evt.currentTarget)
    @recipe[target.data('name')] = target.val()
    console.log @recipe

  saveRecipe: ->
    console.log 'save clicked'
    @recipe.save()