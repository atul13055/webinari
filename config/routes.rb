Rails.application.routes.draw do
  devise_for :admin_users, controllers: {
  	sessions: 'admin_users/sessions',
  	passwords: 'admin_users/passwords'
  }
  #get 'bookings/create'
  root 'home#index'
  resources :workshops, only: %i[index show]
  resources :bookings, only: %i[create] do
  	get :booking_details, on: :member
  end
end


