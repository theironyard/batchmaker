window.Recipe = Backbone.Model.extend(

  initialize: ->
    console.log "Recipe model console log"

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
    console.log "Ingedient model console log"
  
)

