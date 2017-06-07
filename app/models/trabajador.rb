class Trabajador < ApplicationRecord
	self.table_name = 'trabajadores'
	has_many :registro
	has_many :boleta_compra
	has_many :boleta_venta
end
