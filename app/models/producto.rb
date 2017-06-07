class Producto < ApplicationRecord
	has_many :carro_venta
	has_many :carro_compra
end
