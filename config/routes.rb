Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'homepage#index'
    resources :listings
    resources :users

    devise_for :users
    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
    post 'homepage/notif'
  

  #apipie
  end
end
