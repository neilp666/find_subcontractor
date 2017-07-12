Rails.application.routes.draw do
  resources :locations, except: [:update, :edit, :destroy]
  root 'locations#index'
end
