Rails.application.routes.draw do
  resources :boleta_venta
  resources :registros
  resources :trabajadors
  resources :proveedors
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
