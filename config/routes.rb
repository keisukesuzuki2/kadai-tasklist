Rails.application.routes.draw do
  get 'users/edit'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :new, :create]

    get 'signup', to: 'users#edit'
    resources :users, only: [:index, :show, :new, :create]

    get 'signup', to: 'users#show'
    resources :users, only: [:index, :show, :new, :create]

    resources :tasks
    
end
