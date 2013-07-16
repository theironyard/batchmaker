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
        
  # Making avariable for the value the slider is atcurrently
  value = $(this).val()
  
  # shows value + px in previous element, which is the span inside .yield-slider
  $(this).prev().html value + " cookies"

  $(".js-save").hide()
  $(".js-recipe-slider").hide()

  showAdjustmentTools = ->
  $(".js-adjust").show()
  $(".js-save").hide()
  $(".js-recipe-slider").hide()
  $(".js-adjust").click ->
    $(".js-recipe-slider").show()
    $(".js-save").show()
    $(".js-adjust").hide()

  hideAdjustmentTools = ->
  $(".js-save").click ->
    $(".js-recipe-slider").hide()
    $(".js-save").hide()
      $(".js-adjust").show()


  })