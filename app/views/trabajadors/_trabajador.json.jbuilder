json.extract! trabajador, :id, :nombre, :rut, :telefono, :correo, :tipo_traba, :created_at, :updated_at
json.url trabajador_url(trabajador, format: :json)