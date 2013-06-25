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