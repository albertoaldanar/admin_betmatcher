Rails.application.routes.draw do


  resources :materials do
    member do
      post :vuelta
    end
  end

  get 'terminadas'=> 'salidas#ready'

  resources :salidas do
    member do
      post :finish
    end
  end

  resources :gamers

  resources :games
  authenticated :user do
    root 'pages#home', as: :authenticated_root
  end
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
