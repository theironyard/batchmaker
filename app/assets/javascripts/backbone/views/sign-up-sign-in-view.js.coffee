window.SignUpSignInView = Backbone.View.extend({

  initialize: ->
    SignUpSignInTemplate = JST['backbone/templates/sign-up-sign-in-template']
    @render()

  render: ->
    $('.global-container').html SignUpSignInTemplate()
    
  })