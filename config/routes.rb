Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :pets
    end
  end

  devise_scope :user do
    get '/register', to: 'devise/registrations#new'
    get '/edit', to: 'devise/registrations#edit'
    get '/login', to: 'devise/sessions#new'
  end

  
  get '*path', to: 'pages#index', via: :all
end
