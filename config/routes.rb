Rails.application.routes.draw do
  root 'pages#home'

  get 'albums/new'

  get 'albums/create'

  resources :albums do 
    collection do 
      get :list
    end
  end
  resources :gigs do 
    collection do 
      get :list
    end
  end
  devise_for :users
  resources :performances
  resources :lives
  resources :merches
  resources :contacts
  resources :posts
  get 'pages/home'

  get 'pages/music'

  get 'pages/store'

  get 'pages/contact'

  get 'pages/performance'

  get 'pages/admin'

  get 'pages/access_denied'

  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
