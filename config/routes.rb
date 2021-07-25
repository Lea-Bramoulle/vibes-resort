Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contact#new'

  resources :contact

  resources :plaquette

  get '/merci', to: 'static#merci'

end
