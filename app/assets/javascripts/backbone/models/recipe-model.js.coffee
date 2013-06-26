window.Recipe = Backbone.Model.extend(

  initialize: ->

  defaults: [        
    {
      public: true
      steps: [ 
        { ingredients: [] }
      ]
    }
  ]  # End recipe.add
)

window.Ingredient = Backbone.Model.extend(

  initialize: ->
  
)

