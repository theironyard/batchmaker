window.AppView = Backbone.View.extend

  initialize: ->

    # creating new instance of Recipes Collection for specific subcateories
    Batchmaker.collections.recipes = new Recipes()
    Batchmaker.collections.fetchedRecipes = new Recipes()
    Batchmaker.collections.publicCollection = new Recipes()
    Batchmaker.collections.popularCollection = new Recipes()
    Batchmaker.collections.favoriteCollection = new Recipes()
    # window.ingredients = new Ingredients()

    Batchmaker.collections.recipes.fetch()
    Batchmaker.collections.publicCollection.fetch()
    Batchmaker.collections.popularCollection.fetch()
    Batchmaker.collections.favoriteCollection.fetch()
    # ingredients.fetch()