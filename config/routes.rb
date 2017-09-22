Rails.application.routes.draw do
  devise_for :users
  root "session#index"

  resources :users do
    resources :projects, shallow: true do
      resources :updates, shallow: true
    end
  end

  # resources :users do
  #   resources :updates
  # end
end
