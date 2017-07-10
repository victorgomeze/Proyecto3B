Rails.application.routes.draw do

  resources :venta_tickets
  devise_for :users
  resources :carro_venta
  resources :registros
  resources :trabajadors
  resources :productos
  resources :carro_compras
  resources :boleta_compras
  resources :trabajadors
  resources :registros
  resources :proveedors
  resources :clientes
  root "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
