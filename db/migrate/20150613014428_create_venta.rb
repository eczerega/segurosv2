class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.string :tipo_producto
      t.integer :monto
      t.integer :vendedor_id
      t.integer :punto_de_venta_id
      t.string :aux1 #Esto va a ser el estado de la venta.
      t.string :aux2 #Esto va a ser el id del producto vendido (Bien aweonao no haberlo puesto antes)
      t.string :aux3

      t.timestamps null: false
    end
  end
end
