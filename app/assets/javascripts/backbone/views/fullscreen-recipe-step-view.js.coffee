window.FullscreenRecipeStepView = Support.CompositeView.extend

	initialize: ->
		$('.wrapper').html ''
		@render()

	render: ->
		$('.wrapper').append JST['backbone/templates/fullscreen-recipe-step-template'](this.model)