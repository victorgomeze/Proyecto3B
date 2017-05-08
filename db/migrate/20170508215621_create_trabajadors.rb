class CreateTrabajadors < ActiveRecord::Migration[5.0]
  def change
    create_table :trabajadores do |t|
      t.string :nombre
      t.integer :rut
      t.integer :telefono
      t.string :correo
      t.integer :tipo_traba

      t.timestamps
    end
  end
end
