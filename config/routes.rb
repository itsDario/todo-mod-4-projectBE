Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/events', to: 'events#create'
  get '/events', to: 'events#index'
  delete '/events/:id', to: 'events#destroy'
  post '/cal', to: 'calender#create'
  get '/cal', to: 'calender#index'
  delete '/cal/:id', to: 'calender#destroy'
end
