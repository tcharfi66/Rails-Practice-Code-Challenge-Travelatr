Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :posts, only: [:edit, :show, :create, :new, :update]

  resources :bloggers, only: [:new, :create, :show]

  resources :destinations, only: [:show]

end
