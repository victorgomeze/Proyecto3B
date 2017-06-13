class Proveedor < ApplicationRecord
	self.table_name = 'proveedores'
	has_many :boleta_compra

	#Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
    #Validacion telefono no null
	validates :telefono , presence: { message: "telefono no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :telefono, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion telefono maximo 7 digitos
    validates :telefono, length: { maximum: 7 }
     #Validacion correo no null
	validates :correo , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion correo solo letras
    validates :correo, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del correo
    validates :correo, length: { minimum: 2 }
    validates :correo, length: { maximum: 50 }

    #Validacion empresa no null
	validates :empresa , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion empresa solo letras
    validates :empresa, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del empresa
    validates :empresa, length: { minimum: 2 }
    validates :empresa, length: { maximum: 50 }

end
