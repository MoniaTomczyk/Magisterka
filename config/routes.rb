Rails.application.routes.draw do
  devise_for :users
  root "pages#index"
  get '/home', to: 'static_pages#home'
end
