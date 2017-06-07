class CarroVenta < ApplicationRecord
	belongs_to :producto
	belongs_to :boleta_venta
end
