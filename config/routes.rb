Rails.application.routes.draw do
  resources :expeditions, only: [:index, :new, :create]
end
