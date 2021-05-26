Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:index, :update]
end
