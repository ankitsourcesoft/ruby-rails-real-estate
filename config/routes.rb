Rails.application.routes.draw do
  get "/dashboard" =>'dashboard#index', as: :dashboard
 

  resources :proparties
  devise_for :accounts
  root 'public#main'
 
end
