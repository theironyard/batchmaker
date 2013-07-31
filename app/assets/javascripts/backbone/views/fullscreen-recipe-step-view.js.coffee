window.FullscreenRecipeStepView = Backbone.View.extend({

  initialize: ->
    console.log 'fullscreen initialize'
    @render()

  render: ->
    console.log 'FullscreenRecipeStep rendered'
    $('.global-container').html ''
    ('.fullscreen-container').html JST['backbone/templates/fullscreen-recipe-step-template']()

})