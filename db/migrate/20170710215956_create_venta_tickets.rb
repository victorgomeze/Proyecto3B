class CreateVentaTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :venta_tickets do |t|
      t.datetime :fecha
      t.integer :monto
      t.integer :tipo_pago
      t.integer :cantidad

      t.timestamps
    end
  end
end
