Rails.application.routes.draw do
  resources :favorites, only: :index
  resources :cars
end
