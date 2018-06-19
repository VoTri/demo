Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :photos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {registrations: 'registrations'}
  root "home#index"
end
