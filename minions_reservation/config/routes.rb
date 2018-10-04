Rails.application.routes.draw do
  resources :reservas
  
  root 'reservas#index'
  
  get 'reserva', to: 'reservas#new'

end
