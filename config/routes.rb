Rails.application.routes.draw do
  resources :products, only: [:index, :destroy, :create, :show]
  resources :blogs, only: [:index, :destroy, :create, :show]
  resources :users, only: [:show]
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
