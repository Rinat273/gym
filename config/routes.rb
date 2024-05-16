Rails.application.routes.draw do
devise_for :users
  namespace :api do
    namespace :v1 do
      resources :trains do
        resources :workouts
      end
    end
  end

      # get '/users/sign_out' => 'devise/sessions#destroy'


  resources :trains do 
    post 'done', action: :done
    get 'current_workout', action: :current_workout
    
  end
  
  resources :workouts
  resources :exercises
  resources :train_blocks
  resources :train_plans
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  
end
