AppView = Backbone.View.extend({

  initialize: ->

    # @render()
    console.log 'Dashboard View is instantiated in AppView'

    window.publicCollection = new Recipes()
    window.popularCollection = new Recipes()
    window.favoriteCollection = new Recipes()
    window.recipes = new Recipes()
    window.ingredients = new Ingredients()

    recipes.add([
          
          {
            "recipeName": "Garlic Chicken",
            "author": "Allie Sloan",
            "public": true,
            "private": false,
            "image": "http://images.media-allrecipes.com/userphotos/250x250/00/39/44/394412.jpg",
            "recipeType": "Dinner",
            "prepTime": 20,
            "cookTime": 35,
            "cookTemp": 425,
            "farenheit": true,
            "celsius": false,
            "yieldAmount": 4,
            "yieldName": "servings",
            "steps": {
              "ingredients": [
                {
                "ingredient": "crushed garlic",
                "amount": 2,
                "unit": "teaspoons"
                },
                {
                "ingredient": "olive oil",
                "amount": ".25",
                "unit": "cup"
                },
                {
                "ingredient": "dry bread crumbs",
                "amount": ".25",
                "unit": "cup"
                },
                {
                "ingredient": "grated Parmesan cheese",
                "amount": ".25",
                "unit": "cup"
                },
                {
                "ingredient": "boneless, skinless chicken breast halves",
                "amount": 4,
                "unit": ""
                }

              ], # End Ingredients
              "directions": "Preheat oven to 425 degrees F. Warm the garlic and olive oil to blend the flavors. In a separate dish, combine the bread crumbs and Parmesan cheese. Dip the chicken breasts in the olive oil and garlic mixture, then into the bread crumb mixture. Place in a shallow baking dish. Bake in the preheated oven for 30 to 35 minutes, until no longer pink and juices run clear."
            }, # End Steps

            "personalNotes": "Simple to make, just dip and bake! Garlicky goodness in a breaded chicken dish. Yum!"
          },
          
          {
            recipeName: "Foot Oven"
          }

      ]);  # End recipe.add

    publicCollection.add([
          
          {
            recipeName: "Public Recipe 1",
          },
          
          {
            recipeName: "Public Recipe 2"
          }

      ]);  # End public.add

    popularCollection.add([
          
          {
            recipeName: "Popular Recipe 1",
          },
          
          {
            recipeName: "Popular Recipe 2"
          }

      ]);  # End populars.add

    favoriteCollection.add([
          
          {
            recipeName: "Favorite Recipe 1",
          },
          
          {
            recipeName: "Favorite Recipe 2"
          }

      ]);  # End favorites.add

    ingredients.add([
          
          {
            ingredientName: "Ingredient 1",
          },
          
          {
            ingredientName: "Ingredient 2"
          }

      ]);  # End ingredients.add

    new DashboardView()

})


$ ->
  appView = new AppView()