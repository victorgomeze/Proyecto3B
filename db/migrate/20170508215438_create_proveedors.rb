class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedores do |t|
      t.string :nombre
      t.integer :rut
      t.string :correo
      t.integer :telefono
      t.string :empresa

      t.timestamps
    end
  end
end
