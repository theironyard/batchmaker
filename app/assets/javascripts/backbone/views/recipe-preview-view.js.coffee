window.RecipePreview = Backbone.View.extend({

  # events:

  initialize: ->
    @render()

  render: ->

    # just psuedo code
    # this works for empty models or dataful models
    # @model.get('steps').each (step) ->
    #   new RecipeStepView(step)

    #  clearing out global container, whatever is in there
    $('.global-container').html ''
    # inserting the recipe preview in global container
    @model.get('recipes').each (recipe) ->
      $('.global-container').html JST['backbone/templates/recipe-preview-template'](recipe)

  })