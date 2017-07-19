class BorrandoTablas < ActiveRecord::Migration[5.0]
  def change
  	drop_table :registros 
  	drop_table :carro_ventas 
  	drop_table :carro_compras 
  	drop_table :venta_tickets
  	drop_table :boleta_compras
  end
end
