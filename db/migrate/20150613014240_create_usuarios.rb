class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :rut
      t.integer :dv
      t.string :email
      t.string :telefono_fijo
      t.string :telefono_celular
      t.string :password_digest
      t.string :image
      t.integer :tipo
      t.integer :estado
      t.integer :punto_venta

      t.timestamps null: false
    end
  end
end
