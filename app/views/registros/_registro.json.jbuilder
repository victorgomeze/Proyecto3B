json.extract! registro, :id, :fecha, :hora_ingreso, :hora_salida, :datetime, :created_at, :updated_at
json.url registro_url(registro, format: :json)