Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"

  resources :restaurants do
    resources :items
  end
  resources :dishes

  # resources :items, defaults: {format: :html}
end
