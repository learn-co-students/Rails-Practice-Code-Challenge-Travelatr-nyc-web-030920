Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers
  resources :destinations 
  resources :posts 

  post '/posts/:id/add_like', to:"posts#add_like", as: "add_like"
end
