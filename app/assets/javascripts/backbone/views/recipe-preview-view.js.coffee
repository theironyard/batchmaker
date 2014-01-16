window.RecipePreview = Backbone.View.extend({

  # events:

  initialize: ->
    @render()
    
  render: ->

    #  clearing out global container, whatever is in there
    # $('.main-container').html ''
    console.log 'recipe preview'
    # inserting the recipe preview in global container
    $('.main-container').html JST['backbone/templates/recipe-preview-template'](this.model)

  })