Rails.application.routes.draw do
  resources :tasks

  
  devise_for :users
  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "welcomes#index"
  resources :welcomes
  get 'mainpage', to: 'welcomes#main_page'
end
