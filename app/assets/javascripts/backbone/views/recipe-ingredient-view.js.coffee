window.RecipeIngredientView = Backbone.View.extend ({

  events:
    'click .add-remove-button': 'clickAdd'

  initialize: ->
    console.log 'RecipeIngredientView initialized'
    @render()

  render: ->
    $('.js-ingredient-container').html JST['backbone/templates/ingredient-template']()
    console.log 'Rendering ingredient template into ingredient container'

  clickAdd: ->
    $('.js-ingredient-container').append JST['backbone/templtes/ingredient-template']()
    # $('.add-remove-button ').toggleClass('.ss-hyphen')
    console.log 'you clicked plus button'

  })