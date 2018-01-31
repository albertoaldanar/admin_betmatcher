Rails.application.routes.draw do
  # get 'pages/home'

  authenticated :user do
    root 'pages#home', as: :authenticated_root
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
