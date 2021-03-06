Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  resources :users

  get '/vlogs', to:'vlogs#index'
  resources :vlogs do
    collection do
      post :confirm
    end
  end
end
