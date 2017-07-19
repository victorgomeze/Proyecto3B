class EliminandoFKeys2 < ActiveRecord::Migration[5.0]
  def change
  	drop_table :trabajadores 
    drop_table :clientes 
    drop_table :proveedores 
     
  end
end
