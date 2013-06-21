window.RecipePreview = Backbone.View.extend({

  # events:

  initialize: ->
    @render()

  render: ->
    console.log 'RecipePreview is rendered rom recipe-preview-view'
    $('.global-container').html ''
    $('.global-container').html JST['backbone/templates/recipe-preview-template']()

  })