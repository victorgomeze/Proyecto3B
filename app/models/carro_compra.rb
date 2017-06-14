class CarroCompra < ApplicationRecord
	belongs_to :producto
	belongs_to :boleta_compra

	#validacion cantidad_prod no null
	validates :cantidad_prod, presence: { message: "cantidad de productos no debe estar vacio"}, confirmation: true
	#validacion cantidad_prod solo numero
	validates :cantidad_prod, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
	#validacion cantidad_prod minimo 1 digito
	validates :cantidad_prod, length: { minimum: 1 }
	#validacion cantidad_prod maximo 7 digito
	validates :cantidad_prod, length: { maximum: 7 }

end
