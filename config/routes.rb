Rails.application.routes.draw do
  get 'photos/index'
  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "home/about"
  
  resources :albums do
    resources :photos do
      resources :tags
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
