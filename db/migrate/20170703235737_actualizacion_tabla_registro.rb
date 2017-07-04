class ActualizacionTablaRegistro < ActiveRecord::Migration[5.0]
  def change
  	remove_column :registros, :hora_salida
  	remove_column :registros, :datetime
  	add_column :registros, :hora_salida , :datetime

  	
  end
end
