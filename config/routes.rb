Postbook::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
    delete 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  resources :posts
  get 'feed', to: 'posts#index', as: :feed
  root :to => 'posts#index'

  get '/:id', to: 'profiles#show', as: :profile

end
