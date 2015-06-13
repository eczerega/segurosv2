class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.string :tipo_producto
      t.integer :monto
      t.integer :vendedor_id
      t.integer :punto_de_venta_id
      t.string :aux1
      t.string :aux2
      t.string :aux3

      t.timestamps null: false
    end
  end
end
