Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :calenders, only: [:new, :create, :edit, :update, :show, :index]
  resources :users, only: [:create]
  post '/login' => 'auth#create'
  get '/profile' => 'users#profile'
  resources :events, only: [:new, :create, :edit, :update, :show, :index]
end
