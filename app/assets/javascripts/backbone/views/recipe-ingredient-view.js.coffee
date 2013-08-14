window.RecipeIngredientView = Support.CompositeView.extend

  events:
    'click .js-add-ingredient': 'clickAdd'

  initialize: ->
    @render()

  render: ->
    $('.js-ingredient-container').html @el
    @$el.html JST['backbone/templates/ingredient-template']()

  clickAdd: ->
    console.log 'clickAdd'
    @$el.append JST['backbone/templates/ingredient-template']()
    @$el.find(".chzn-select").chosen()