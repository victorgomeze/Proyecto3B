class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :stock_act
      t.integer :stock_min
      t.integer :precio_compra
      t.integer :precio_venta

      t.timestamps
    end
  end
end
