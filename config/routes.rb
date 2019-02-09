Rails.application.routes.draw do
  resources :queued_songs
  resources :playlists
  resources :songs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
