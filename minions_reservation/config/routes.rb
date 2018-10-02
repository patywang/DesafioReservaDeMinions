Rails.application.routes.draw do
  resources :reservas
  root 'reservas#new'
end
