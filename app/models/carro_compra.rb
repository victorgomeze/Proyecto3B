class CarroCompra < ApplicationRecord
	belongs_to :producto
	belongs_to :boleta_compra
end
