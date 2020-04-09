Rails.application.routes.draw do
  # get 'destinations/index'

  # get 'bloggers/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :posts
resources :bloggers
resources :destinations
end
