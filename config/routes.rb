Rails.application.routes.draw do

  resources :boleta_venta
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

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
