Rails.application.routes.draw do
  root to: 'ratings#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resources :ratings do
    resources :recipes
  end
end
