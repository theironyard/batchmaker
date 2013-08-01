window.FullscreenRecipeStepView = Backbone.View.extend({

  initialize: ->
    console.log 'fullscreen initialize'
    @render()

  render: ->
    $('.global-container').html
    $('.fullscreen-container').append JST['backbone/templates/fullscreen-recipe-step-template'](this.model)
    console.log 'FullscreenRecipeStep rendered'

})