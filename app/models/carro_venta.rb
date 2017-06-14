class CarroVenta < ApplicationRecord
	belongs_to :producto
	belongs_to :boleta_venta

	#validacion cantidad no null
	validates :cantidad, presence: { message: "cantidad no debe estar vacio"}, confirmation: true
	#validacion cantidad solo numero
	validates :cantidad, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
	#validacion cantidad minimo 1 digito
	validates :cantidad, length: { minimum: 1 }
	#validacion cantidad maximo 7 digito
	validates :cantidad, length: { maximum: 7 }

end
