Rails.application.routes.draw do
  get 'users/:username', to: 'users#show', as: 'user'

  resources :shareseshes
  resources :privseshes
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	get "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => "pages#about"
  get 'contact' => "pages#contact"
end