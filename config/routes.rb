Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"

  resources :pokemons do
    resources :bookings, only: [:create]
  end

  patch "booking/:id/accepted", to: "bookings#accepted", as: :booking_accepted
  patch "booking/:id/refused", to: "bookings#refused", as: :booking_refused
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
