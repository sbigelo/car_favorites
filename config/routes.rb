Rails.application.routes.draw do
  resources :favorites, only: :index
  resources :cars
  # , only: [:index, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
