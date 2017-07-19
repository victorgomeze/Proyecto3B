class Addtables < ActiveRecord::Migration[5.0]
  def change
  create_table :venta_det do |t|
    t.integer  :producto
    t.integer  :cantidad
    t.integer  :venta
    t.integer :vendedor
end
  create_table :ventas do |t|
      t.datetime :fecha
      t.integer :total
      t.integer :vendedor
      t.integer :venta_det  
    end
  
  end
  
  
end
