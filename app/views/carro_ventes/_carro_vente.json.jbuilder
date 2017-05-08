json.extract! carro_vente, :id, :cantidad_prod, :created_at, :updated_at
json.url carro_vente_url(carro_vente, format: :json)