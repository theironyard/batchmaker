window.AppView = Backbone.View.extend({

  initialize: ->

    # @render()
    console.log 'Dashboard View is instantiated in AppView'

    # creating new instance of Recipes Collection for specific subcateories
    window.publicCollection = new Recipes()
    window.popularCollection = new Recipes()
    window.favoriteCollection = new Recipes()
    window.recipes = new Recipes()
    window.ingredients = new Ingredients()

    recipes.fetch()
    publicCollection.fetch()
    popularCollection.fetch()
    favoriteCollection.fetch()
    ingredients.fetch()

})
