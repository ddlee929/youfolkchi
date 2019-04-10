Rails.application.routes.draw do
  resources :performances
  resources :concerts
  resources :lives
  resources :merches
  resources :contacts
  resources :posts
  get 'pages/home'

  get 'pages/music'

  get 'pages/store'

  get 'pages/contact'

  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
