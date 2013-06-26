window.Recipe = Backbone.Model.extend(

  initialize: ->

  defaults: [        
    {
      public: true
      steps: [ 
        { ingredients: [] }
      ]
    }
  ]  # End recipe defaults
)

window.Ingredient = Backbone.Model.extend(

  initialize: ->
  
)

