window.RecipePreview = Backbone.View.extend
  
  events:
    'click .js-adjust-recipe' : 'adjustYield',
    'click .js-start-cooking': 'clickStart'

  initialize: ->
    @render()
    # $(".js-save").hide()
    # $(".js-recipe-slider").hide()
    
  render: ->
    $('.global-container').html JST['backbone/templates/recipe-preview-template'](this.model)

  adjustYield: ->  
    console.log "clicked adjust button"    
    # Making avariable for the value the slider is atcurrently
    # value = $(this).val()
    
    # shows value + px in previous element, which is the span inside .yield-slider
    # $(this).prev().html 'value + " cookies"'

    @$el(".js-save").show().html
    @$el(".js-recipe-slider").show().html
    @$el(".js-adjust-recipe").hide()

  clickStart: ->
    console.log 'Clicked js-start-cooking'
    new FullscreenRecipeStepView()
