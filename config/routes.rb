Rails.application.routes.draw do
  #get 'bookings/create'
  root 'home#index'
  resources :workshops, only: %i[index show]
  resources :bookings, only: %i[create]
end


