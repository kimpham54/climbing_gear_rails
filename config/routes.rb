Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :users
    resources :items
    resources :personal_items
  #     resources :items do
  #       resources :personal_items
  #   end
  # end

  get "/signup" => "users#new", as: "signup"
  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  # as only for get not delete or post
  delete "/logout" => "sessions#destroy"

    root 'sessions#new'

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')

  
end
