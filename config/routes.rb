Rails.application.routes.draw do
  devise_for :users
  root "static#home"
  resources :users do
    resources :subscriptions, only: [:create, :destroy] do
      resources :projects, only: [:index, :show]
    end
  end

  resources :projects do
    resources :updates
  end
end
