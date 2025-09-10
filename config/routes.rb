Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "posts#index"

  # No authentication routes needed with HTTP Basic Auth

  # Blog routes (WordPress-like)
  resources :posts do
    resources :comments, only: [:create]
    collection do
      get :search
    end
  end
end
