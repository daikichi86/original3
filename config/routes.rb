Rails.application.routes.draw do
  root to: 'places#index'
  resources :places, only:[:index, :new, :create]
end
