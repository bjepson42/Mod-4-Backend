Rails.application.routes.draw do
  #localhost:3000/selected_songs
  #localhost:3000/songs
  #localhost:3000/users
  resources :selected_songs
  resources :songs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #localhost:3000/login
  #localhost:3000/profile
  #resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/users/id:', to: 'users#show'
  get '/profile', to: 'users#profile'
  get '/unirest', to: 'unirest#fetch'
end
