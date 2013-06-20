Batchmaker::Application.routes.draw do
  get 'test' => 'pages#test'
  get 'recipe_preview' => 'pages#recipe_preview'
  get 'newrecipe' => 'pages#newrecipe'
  get 'recipes' => 'pages#recipes'
  get 'dashboard' => 'pages#dashboard'
  get '' => 'pages#/index/index'
end
