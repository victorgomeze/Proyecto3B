class BoletaVenta < ApplicationRecord
	self.table_name = 'boleta_ventas'
	belongs_to :cliente
	belongs_to :vendedor
	has_one :carro_venta
end
