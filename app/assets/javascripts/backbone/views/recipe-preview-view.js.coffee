$ ->
  window.RecipePreview = Backbone.View.extend

    el: $('.global-container')

    events:
      'click .js-adjust-recipe' : 'adjustYield'
      'click .js-save'          : 'saveYield'
      'click .js-start-cooking' : 'clickStart'

    initialize: ->
      @render()
      $(".js-save").hide()
      $(".js-recipe-slider").hide()
      
    render: ->
      $('.global-container').html JST['backbone/templates/recipe-preview-template'](this.model)

    adjustYield: ->  
      console.log "clicked adjust button"

      $(".js-save").show().html
      $(".js-recipe-slider").show()
      $(".js-adjust-recipe").hide()

      $('.js-recipe-slider').change ->
        console.log $('.js-recipe-slider').val()

        newValue = $('.js-recipe-slider').val()
        $('.recipe-title').html( newValue )

        if newValue == 1
          $('.yield-amount').pop()

    saveYield: ->
      $(".js-save").hide().html
      $(".js-recipe-slider").hide()
      $(".js-adjust-recipe").show()

    clickStart: ->
      console.log 'Clicked js-start-cooking'
      new FullscreenRecipeStepView()
