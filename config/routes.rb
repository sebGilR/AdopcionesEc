Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :pets
    end
  end

  get '*path', to: 'pages#index', via: :all
end
