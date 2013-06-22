window.RecipePreview = Backbone.View.extend({

  # events:

  initialize: ->
    @render()

  render: ->
    console.log 'RecipePreview is rendered rom recipe-preview-view'
    #  clearing out gloabl container, whatever is in there
    $('.global-container').html ''
    # inserting the recipe preview in global container
    $('.global-container').html JST['backbone/templates/recipe-preview-template']()

  })