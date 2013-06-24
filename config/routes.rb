Batchmaker::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'test' => 'pages#test'
  get 'recipe_preview' => 'pages#recipe_preview'
  get 'newrecipe' => 'pages#newrecipe'
  get 'recipes' => 'pages#recipes'
  get 'dashboard' => 'pages#dashboard'
  get '' => 'pages#/index/index'
  get 'myrecipes' => 'pages#myrecipes'
  get 'signup' => 'pages#signup'
end
