class BoletaCompra < ApplicationRecord
	self.table_name = 'boleta_compras'
	belongs_to :proveedor
	belongs_to :vendedor
	has_one :carro_compra
end
