class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.int :rut
      t.string :correo
      t.int :telefono
      t.string :empresa

      t.timestamps
    end
  end
end
