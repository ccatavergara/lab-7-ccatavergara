Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"

  resources :restaurants do
    resources :items
    get 'dishes', to: 'restaurants#dishes', defaults: { format: 'json' }
  end
  resources :items
  resources :dishes

end
