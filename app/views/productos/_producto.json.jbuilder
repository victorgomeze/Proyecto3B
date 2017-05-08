json.extract! producto, :id, :nombre, :stock_act, :stock_min, :precio_compra, :precio_venta, :created_at, :updated_at
json.url producto_url(producto, format: :json)