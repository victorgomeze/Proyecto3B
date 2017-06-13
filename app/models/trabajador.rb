class Trabajador < ApplicationRecord
	self.table_name = 'trabajadores'
	has_many :registro
	has_many :boleta_compra
	has_many :boleta_venta

	#Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
    #Validacion tipo_traba no null
	validates :tipo_traba , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion tipo_traba solo numeros
    validates :tipo_traba, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #validacion tipo_traba numero de 1 al 3
    validates :tipo_traba, format: { with: /\A[123]+\z/, message: "Solo se aceptan numero del 1 al 3" }
    validates :tipo_traba, length: { in: 1..1, message: "Solo deben ser unidades" }
	validates :telefono , presence: { message: "telefono no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :telefono, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion telefono maximo 11 digitos
    validates :telefono, length: { maximum: 7 }

    #Validacion correo no null
	validates :correo , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion correo solo letras
    validates :correo, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del correo
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
end
