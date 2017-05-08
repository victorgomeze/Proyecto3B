class AgregarForeignKeys2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :boleta_ventas, :trabajadores_id, :integer
    add_foreign_key :boleta_ventas, :trabajadores , column: :trabajadores_id, primary_key: :id
    
	add_column :carro_ventas, :boleta_ventas_id, :integer
    add_foreign_key :carro_ventas, :boleta_ventas , column: :boleta_ventas_id, primary_key: :id
	
    add_column :registros, :trabajadores_id, :integer
    add_foreign_key :registros, :trabajadores , column: :trabajadores_id, primary_key: :id
	
    add_column :carro_ventas, :productos_id, :integer
    add_foreign_key :carro_ventas, :productos , column: :productos_id, primary_key: :id
	
	add_column :boleta_compras, :trabajadores_id, :integer
    add_foreign_key :boleta_compras, :trabajadores , column: :trabajadores_id, primary_key: :id
    
    add_column :carro_compras, :productos_id, :integer
    add_foreign_key :carro_compras, :productos , column: :productos_id, primary_key: :id
	
	add_column :carro_compras, :boleta_compras_id, :integer
    add_foreign_key :carro_compras, :boleta_compras , column: :boleta_compras_id, primary_key: :id
	
	add_column :boleta_compras, :proveedores_id, :integer
    add_foreign_key :boleta_compras, :proveedores , column: :proveedores_id, primary_key: :id
    
  end
end
