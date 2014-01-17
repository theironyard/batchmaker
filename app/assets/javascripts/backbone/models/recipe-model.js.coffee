window.Recipe = Backbone.Model.extend(

  # Tell the model how to append its own id
  url: -> "/recipes/#{this.id}"

  paramRoot: 'recipe'

  initialize: ->
  # initialize what to look like data-wise

  defaults: [        
    { 
      author: '',
      cook_temp: '',
      cook_time: '',
      farenheit: '',
      prep_time: '',
      name: '',
      category: '',
      yield_amount: '',
      yield_name: '',
      user_id: '',
      public: true,
      steps: [ 
        { ingredients: [] }
      ]
    }
  ]  # End recipe defaults
)

window.Ingredient = Backbone.Model.extend(

  initialize: ->
  
)

