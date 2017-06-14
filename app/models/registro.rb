class Registro < ApplicationRecord
	belongs_to :trabajador 

#validacion fecha no null
validates :fecha, presence: { message: "fecha no debe estar vacio"}, confirmation: true
#validacion fecha 

#validacion hora_ingreso no null
validates :hora_ingreso, presence: { message: "hora ingreso no debe estar vacio"}, confirmation: true
#validacion hora_ingreso numeros
validates :hora_ingreso, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
#validacion hora_ingreso minimo 1 digito
validates :hora_ingreso, length: { minimum: 1 }
#validacion hora_ingreso maximo 2 digito
validates :hora_ingreso, length: { maximum: 2 }


#validacion hora_salida no null
validates :hora_salida, presence: { message: "hora salida no debe estar vacio"}, confirmation: true
#validacion hora_salida numeros
validates :hora_salida, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
#validacion hora_salida minimo 1 digito
validates :hora_salida, length: { minimum: 1 }
#validacion hora_salida maximo 2 digito
validates :hora_salida, length: { maximum: 2 }

end
