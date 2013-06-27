window.RecipeIngredientView = Backbone.View.extend ({

  events:
    # not working yet. need this button to create a new blank ingredient view.
    'click .js-add-ingredient': 'clickAdd'

  initialize: ->
    @render()

  render: ->
    # inserting ingredient template in its container that's inside the step template
    $('.js-ingredient-container').html JST['backbone/templates/ingredient-template']()

  clickAdd: ->
    console.log 'clickAdd'
    $('button.js-add-ingredient').clone JST['backbone/templates/ingredient-template']()

  })