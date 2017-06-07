class Proveedor < ApplicationRecord
	self.table_name = 'proveedores'
	has_many :boleta_compra
end
