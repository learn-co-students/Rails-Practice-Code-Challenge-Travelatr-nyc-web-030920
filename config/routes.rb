Rails.application.routes.draw do
  resources :bloggers, only: [:index, :show, :create, :new]
  resources :posts, only: [:index, :show, :create, :new, :edit, :update]
  resources :destinations, only: [:index, :show, :create, :new]
end
