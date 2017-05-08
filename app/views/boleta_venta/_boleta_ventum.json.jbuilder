json.extract! boleta_ventum, :id, :fecha, :monto, :tipo_pago, :cantidad, :created_at, :updated_at
json.url boleta_ventum_url(boleta_ventum, format: :json)