Rails.application.routes.draw do
  root "home#index"
  devise_for :users, :controllers => {registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks"  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trips
  
  resources :idea_boards, only: [:show] do
    resources :ideas, only: [:show, :new]
  end

  resources :ideas

  resources :trip_users, only: [:new]
end
