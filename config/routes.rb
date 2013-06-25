Batchmaker::Application.routes.draw do

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "/recipes/public" => "recipes#public"
  get "/recipes/favorites" => "recipes#favorites"

  resources :recipes

  authenticated :user do
    root :to => 'pages#/index/index'
  end

  root :to => redirect("/users/sign_in")

  ActiveAdmin.routes(self)
end


                   #     recipes GET        /recipes(.:format)                        recipes#index
                   #             POST       /recipes(.:format)                        recipes#create
                   #  new_recipe GET        /recipes/new(.:format)                    recipes#new
                   # edit_recipe GET        /recipes/:id/edit(.:format)               recipes#edit
                   #      recipe GET        /recipes/:id(.:format)                    recipes#show
                   #             PUT        /recipes/:id(.:format)                    recipes#update
                   #             DELETE     /recipes/:id(.:format)                    recipes#destroy