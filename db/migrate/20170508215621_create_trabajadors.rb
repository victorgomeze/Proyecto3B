class CreateTrabajadors < ActiveRecord::Migration[5.0]
  def change
    create_table :trabajadores do |t|
      t.string :nombre
      t.int :rut
      t.int :telefono
      t.string :correo
      t.int :tipo_traba

      t.timestamps
    end
  end
end
