Batchmaker::Application.routes.draw do
  get 'test' => 'pages#test'
  get 'recipe_preview' => 'pages#recipe_preview'
  get 'newrecipe' => 'pages#newrecipe'
  get 'dropdown' => 'pages#dropdown'
end
