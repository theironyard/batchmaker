window.RecipePreview = Support.CompositeView.extend

  initialize: ->
    @recipe = new Recipe()
    @render()
    console.log @recipe
  
  events:
    'click .js-adjust-ingredients' : 'adjustYield',
    'click .js-save-ingredients'   : 'saveYield',
    'click .js-edit'               : 'editRecipe',
    'click .js-start-cooking'      : 'clickStart',
    'click .delete-recipe'         : 'deleteRecipe'
  
  render: ->
    @$el.html JST['backbone/templates/recipe-preview-template'](this.model)
    @$(".js-save").hide()
    @$(".js-recipe-slider").hide()
    @

  adjustYield: ->
    $(".js-save-ingredients").show().html
    $(".js-recipe-slider").show()
    $(".js-adjust-ingredients").hide()

    $('.js-recipe-slider').change ->
    console.log $('.js-recipe-slider').val()

    newValue = $('.js-recipe-slider').val()
    $('.recipe-title').html( newValue )

      # if newValue == 1
      #   $('.yield-amount').pop()

  saveYield: ->
    $(".js-save-ingredients").hide().html
    $(".js-recipe-slider").hide()
    $(".js-adjust-ingredients").show()

  clickStart: ->
    console.log 'Clicked js-start-cooking'
    new FullscreenRecipeStepView()

  editRecipe: ->
    console.log 'clicked editRecipe'
    new RecipeForm()

  deleteRecipe: ->
    console.log 'delete clicked'

    @recipe.destroy success: (recipe, response) ->
      "you deleted it"

    @$el.html ''
    new DashboardView()