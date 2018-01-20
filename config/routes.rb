Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show]
  root "pages#index"
  get '/home', to: 'static_pages#home'
end
