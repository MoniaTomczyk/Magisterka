Rails.application.routes.draw do
  root "pages#index"
  get '/home', to: 'static_pages#home'
end
