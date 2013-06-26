window.RecipeIngredientView = Backbone.View.extend ({

  events:
    # not working yet. need this button to reate a new blank ingredient view.
    'click .add-remove-button': 'clickAdd'

  initialize: ->
    @render()

  render: ->
    # inserting ingredient template in its container that's inside the step template
    $('.js-ingredient-container').html JST['backbone/templates/ingredient-template']()

  clickAdd: ->
    # none of this is working, leaving it for later
    # $('.js-ingredient-container').append JST['backbone/templtes/ingredient-template']()
    # $('.add-remove-button ').toggleClass('.ss-hyphen')
    # console.log 'you clicked plus button'

  })