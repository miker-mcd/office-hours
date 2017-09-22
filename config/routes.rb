Rails.application.routes.draw do
  devise_for :users
  root "static#home"
  resources :users

  resources :projects do
    resources :updates
  end
end
