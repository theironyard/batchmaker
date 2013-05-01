Batchmaker::Application.routes.draw do
  get 'test' => 'pages#test'
  get 'recipe_preview' => 'pages#recipe_preview'
end
