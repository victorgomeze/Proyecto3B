json.extract! venta_ticket, :id, :fecha, :monto, :tipo_pago, :cantidad, :created_at, :updated_at
json.url venta_ticket_url(venta_ticket, format: :json)