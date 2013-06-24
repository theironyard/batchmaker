Batchmaker::Application.routes.draw do

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'pages#/index/index'
  end

  root :to => redirect("/users/login")

  ActiveAdmin.routes(self)
end
