Rails.application.routes.draw do
  devise_scope :user {
    get '/signin' => 'devise/sessions#new'
    get '/signup' => 'devise/registrations#new'
    get '/'       => 'users#show'
   }

  devise_for :users
  root to: "home#index"

  resources :users, only: [:index, :show]
  resources :boats
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
