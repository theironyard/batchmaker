window.Recipe = Backbone.Model.extend(

  # Tell the model how to append its own id
  url: -> "/recipes/#{this.id}"

  paramRoot: 'recipe'

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

