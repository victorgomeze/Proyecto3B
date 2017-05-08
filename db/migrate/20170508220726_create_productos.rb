class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.int :stock_act
      t.int :stock_min
      t.int :precio_compra
      t.int :precio_venta

      t.timestamps
    end
  end
end
