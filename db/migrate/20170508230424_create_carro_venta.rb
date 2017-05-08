class CreateCarroVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :carro_ventas do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
