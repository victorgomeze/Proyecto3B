class BoletaVenta < ApplicationRecord
	self.table_name = 'boleta_ventas'
	has_many :carro_venta, dependent: :destroy
  	has_many :productos, through: :carro_venta
	

	#validacion fecha no null
	validates :fecha, presence: { message: "fecha no debe estar vacio"}, confirmation: true
	#validacion fecha 

	#validacion monto no null
	validates :monto, presence: { message: "monto no debe estar vacio"}, confirmation: true
	#validacion monto solo numeros
	validates :monto, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
	#validacion monto minimo 1 digito
	validates :monto, length: { minimum: 1 }
	#validacion monto maximo 9 digito
	validates :monto, length: { maximum: 9 }

	#validacion tipo_pago no null
	validates :tipo_pago, presence: { message: "tipo de pago no debe estar vacio"}, confirmation: true
	#validacion tipo_pago solo numero
	validates :tipo_pago, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
	#validacion tipo_pago minimo 1 digito
	validates :tipo_pago, length: { minimum: 1 }
	#validacion tipo_pago maximo 1 digito
	validates :tipo_pago, length: { maximum: 1 }

	#validacion cantidad no null
	validates :cantidad, presence: { message: "cantidad no debe estar vacio"}, confirmation: true
	#validacion cantidad solo numero
	validates :cantidad, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
	#validacion cantidad minimo 1 digito
	validates :cantidad, length: { minimum: 1 }
	#validacion cantidad maximo 7 digito
	validates :cantidad, length: { maximum: 7 }
end
