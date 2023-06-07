Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"

  get 'restaurants/search', to: 'restaurants#search'
  resources :restaurants do
    resources :items
    get 'dishes', to: 'dishes#list', as: 'restaurant_dishes'
  end
  resources :items
  resources :dishes

end
