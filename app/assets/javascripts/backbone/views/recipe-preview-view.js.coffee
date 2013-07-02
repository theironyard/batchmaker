window.RecipePreview = Backbone.View.extend({

  # events:

  initialize: ->
    @render()
    
  render: ->

    #  clearing out global container, whatever is in there
    $('.global-container').html ''
    console.log 'recipe preview'
    # inserting the recipe preview in global container
    $('.global-container').html JST['backbone/templates/recipe-preview-template'](this.model)

  })