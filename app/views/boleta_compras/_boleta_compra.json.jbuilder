json.extract! boleta_compra, :id, :fecha, :monto, :tipo_pago, :cantidad, :created_at, :updated_at
json.url boleta_compra_url(boleta_compra, format: :json)