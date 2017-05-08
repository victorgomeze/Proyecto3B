class CreateCarroVentes < ActiveRecord::Migration[5.0]
  def change
    create_table :carro_ventes do |t|
      t.int :cantidad_prod

      t.timestamps
    end
  end
end
