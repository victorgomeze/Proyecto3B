class AgregarForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	
    add_column :boleta_ventas, :cliente_id, :integer
    add_foreign_key :boleta_ventas, :clientes , column: :cliente_id, primary_key: :id
  end
end
