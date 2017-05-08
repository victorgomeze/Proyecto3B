json.extract! proveedor, :id, :nombre, :rut, :correo, :telefono, :empresa, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)