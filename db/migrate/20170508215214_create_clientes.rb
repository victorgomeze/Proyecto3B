class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.int :rut
      t.string :correo
      t.int :telefono

      t.timestamps
    end
  end
end
