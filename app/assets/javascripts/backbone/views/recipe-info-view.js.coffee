window.RecipeInfoView = Backbone.View.extend ({

  initialize: ->
    console.log 'Initialized RecipeInfoView'
    $('.js-recipe-main-info').html JST['backbone/templates/recipe-info-template']()

  })