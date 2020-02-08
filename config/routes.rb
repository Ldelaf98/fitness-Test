Rails.application.routes.draw do
  get 'clientdashboard/index'
  get 'sessions/create'
  get '/auth/:provider/callback', to:'sessions#create'
  get 'sessions/destroy'
  
  resources :workouts
  
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
