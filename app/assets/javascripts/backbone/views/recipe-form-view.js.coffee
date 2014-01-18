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
    @$el.find("select").chosen()

    @

  updateEvent: (evt) ->
    target = $(evt.currentTarget)
    @recipe[target.data('name')] = target.val()

  saveRecipe: ->
    console.log 'save clicked'
    console.log @recipe
    @recipe.save ({ 
      name: @recipe.name,
      image: @recipe.image,
      author: @recipe.author,
      cook_temp: @recipe.cook_temp,
      cook_time: @recipe.cook_time,
      farenheit: @recipe.farenheit,
      prep_time: @recipe.prep_time,
      category: @recipe.category,
      yield_amount: @recipe.yield_amount,
      yield_name: @recipe.yield_name,
      personal_notes: @recipe.personal_notes,
      user_id: @recipe.user_id,
      public: @recipe.public
    })