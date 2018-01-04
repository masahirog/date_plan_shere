Rails.application.routes.draw do
  resources :plans do
    resources :likes, only: [:create, :destroy]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "top#index"
  get '/search' => 'top#search'
  get '/:nickname' => 'top#account'

end
