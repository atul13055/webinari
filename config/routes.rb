Rails.application.routes.draw do
 devise_for :admin_users, controllers: {
    sessions: 'admin_user/sessions',
    passwords: 'admin_user/passwords'
  }
  #get 'bookings/create'
  root 'home#index'
  resources :workshops, only: %i[index show]
  resources :bookings, only: %i[create] do
  	get :booking_details, on: :member
  end

  resources :refunds do
    get :refund_acceptance, on: :member
  end
  

  namespace :admin do
  	 get 'dashboard' => 'dashboard#index'
     resources :workshops
     resources :bookings
     resources :customers
     resources :refunds do 
      member do
        patch :process_refund
      end
     end
  	end
end


