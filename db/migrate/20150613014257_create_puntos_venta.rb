class CreatePuntosVenta < ActiveRecord::Migration
  def change
    create_table :puntos_venta do |t|
      t.string :nombre
      t.string :ciudad
      t.string :comuna
      t.string :rut
      t.integer :dv
      t.string :calle
      t.integer :empresa_id
      t.string :aux1
      t.string :aux2
      t.string :aux3
      t.string :image

      t.timestamps null: false
    end
  end
end
