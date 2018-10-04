Rails.application.routes.draw do
  resources :reservas
  
  root 'reservas#new'
  
  get 'reserva', to: 'reservas#new'

end
