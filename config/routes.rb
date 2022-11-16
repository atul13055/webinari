Rails.application.routes.draw do
  root 'home#index'
  resources :Workshops, only: %i[index show]
end



# https://youtu.be/2Li408PRkHU?list=PL6SEI86zExmv7wAb5pv3cTVijg1OXEnzP&t=202
