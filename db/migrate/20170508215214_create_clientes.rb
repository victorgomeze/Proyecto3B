class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :rut
      t.string :correo
      t.integer :telefono

      t.timestamps
    end
  end
end
