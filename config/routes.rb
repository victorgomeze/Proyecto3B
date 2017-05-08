Rails.application.routes.draw do
  resources :productos
  resources :carro_compras
  resources :carro_ventes
  resources :boleta_compras
  resources :trabajadors
  resources :registros
  resources :proveedors
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
