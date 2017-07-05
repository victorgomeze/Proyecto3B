class Registro < ApplicationRecord
	belongs_to :trabajador 

#validacion fecha no null
validates :fecha, presence: { message: "fecha no debe estar vacio"}, confirmation: true
#validacion fecha 



end
