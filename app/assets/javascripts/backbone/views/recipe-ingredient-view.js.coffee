window.RecipeIngredientView = Backbone.View.extend ({

  events:
    'click .js-add-ingredient': 'clickAdd'

  initialize: ->
    @render()

  render: ->
    @$el.html JST['backbone/templates/ingredient-template']()
    $('.js-ingredient-container').html @el

  clickAdd: ->
    console.log 'clickAdd'
    @$el.append JST['backbone/templates/ingredient-template']()
    @$el.find(".chzn-select").chosen()

  })