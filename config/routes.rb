Rails.application.routes.draw do
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do

      resources :users
      resources :pages, only: [:show]

      namespace :account do
        resources :user, only: [:index, :update]
        resources :contacts, only: [:index]
        resources :messages, only: [:index]
      end

      #namespace :api, format, 

      devise_for :users
      #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root 'homepage#index'
      resources :listings

      post '/listings/contact', to: 'listings#contact', as: 'listing_contact'

      #apipie

  end


end
