Rails.application.routes.draw do
  resources :appreciations, only: [:create, :index]
end
