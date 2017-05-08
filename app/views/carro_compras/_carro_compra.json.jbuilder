json.extract! carro_compra, :id, :cantidad_prod, :created_at, :updated_at
json.url carro_compra_url(carro_compra, format: :json)