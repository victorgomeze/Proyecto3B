class Producto < ApplicationRecord
	
	#Validacion stock_actual no null
	validates :stock_act , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_actual solo numeros
    validates :stock_act, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion stock_actual maximo 7 digitos
    validates :stock_act, length: { maximum: 7 }
    #Validacion stock_actual debe ser mayor que cero
    validates :stock_act, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion stock_actual debe ser mayor o igual al stock minimo
    validates :stock_act, :numericality => { :greater_than_or_equal_to => :stock_min, message:"Debe ser mayor al stock_minimo"  }
    #Validacion stock_minimo no null
	validates :stock_min , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_minimo solo numeros
    validates :stock_min, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion stock_minimo debe ser mayor a cero
    validates :stock_min, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validar nombre unico
    validates :nombre, uniqueness: true
    #Validacion nombre no null
    validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
    #Validacion precio_compra no null
	validates :precio_compra , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion precio_compra solo numeros
    validates :precio_compra, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion precio_compra debe ser mayor a cero
    validates :precio_compra, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion precio_compra debe tener maximo 7 digitos
    validates :precio_compra, length: { maximum: 7 }


     #Validacion precio_venta no null
	validates :precio_venta , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion precio_venta solo numeros
    validates :precio_venta, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion precio_venta debe ser mayor a cero
    validates :precio_venta, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion precio_venta debe tener maximo 7 digitos
    validates :precio_venta, length: { maximum: 7 }
    validates :precio_venta, :numericality => { :greater_than_or_equal_to => :precio_compra, message:"Debe ser mayor al precio_compra"  }
    #Validacion stock_minimo no null

end
