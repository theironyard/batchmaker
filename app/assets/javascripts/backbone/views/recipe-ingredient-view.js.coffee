window.RecipeIngredientView = Backbone.View.extend ({

  events:
    # not working yet. need this button to create a new blank ingredient view.
    'click .js-add-ingredient': 'clickAdd'

  initialize: ->
    @render()

  render: ->
    @$el.html JST['backbone/templates/ingredient-template']()
    # inserting ingredient template in its container that's inside the step template
    $('.js-ingredient-container').html @el

  clickAdd: ->
    console.log 'clickAdd'
    @$el.append JST['backbone/templates/ingredient-template']()
    @$el.find(".chzn-select").chosen()

  })