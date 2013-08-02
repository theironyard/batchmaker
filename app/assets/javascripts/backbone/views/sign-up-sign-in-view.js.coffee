window.SignUpSignInView = Support.CompositeView.extend

  initialize: ->
    SignUpSignInTemplate = JST['backbone/templates/sign-up-sign-in-template']

  render: ->
    @$el.html SignUpSignInTemplate()
    @    
