class CreateInformacionProductos < ActiveRecord::Migration
  def change
    create_table :informacion_productos do |t|
      t.string :nombre
      t.string :tipo
      t.integer :prima
      t.integer :valor_asegurado
      t.integer :duracion_meses
      t.integer :aseguradora_responsable_id
      t.string :aux1
      t.string :aux2
      t.string :aux3
      t.string :image

      t.timestamps null: false
    end
  end
end
