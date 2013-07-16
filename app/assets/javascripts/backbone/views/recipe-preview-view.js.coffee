window.RecipePreview = Backbone.View.extend({

  events: 
    'click .js-adjust-yield' : 'adjustYield'

  initialize: ->
    @render()
    
  render: ->

    #  clearing out global container, whatever is in there
    $('.global-container').html ''
    console.log 'recipe preview'
    # inserting the recipe preview in global container
    $('.global-container').html JST['backbone/templates/recipe-preview-template'](this.model)

  adjustYield: ->
    $('.js-adjust-yield').click() 


  })