class EliminandoFKeys < ActiveRecord::Migration[5.0]
  def change
  	remove_column :boleta_ventas, :trabajadores_id, :integer
  	remove_column :boleta_compras, :trabajadores_id, :integer
  	remove_column :boleta_ventas, :cliente_id, :integer
  	remove_column :boleta_compras, :proveedores_id, :integer
  	remove_column :registros, :trabajadores_id, :integer

    
    
  end
end
