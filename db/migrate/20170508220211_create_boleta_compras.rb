class CreateBoletaCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :boleta_compras do |t|
      t.datetime :fecha
      t.int :monto
      t.int :tipo_pago
      t.int :cantidad

      t.timestamps
    end
  end
end
