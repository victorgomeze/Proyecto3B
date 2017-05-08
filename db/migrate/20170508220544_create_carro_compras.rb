class CreateCarroCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :carro_compras do |t|
      t.integer :cantidad_prod

      t.timestamps
    end
  end
end
