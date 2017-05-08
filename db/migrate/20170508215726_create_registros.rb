class CreateRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :registros do |t|
      t.datetime :fecha
      t.datetime :hora_ingreso
      t.string :hora_salida
      t.string :datetime

      t.timestamps
    end
  end
end
