class CreateCompaniaSeguros < ActiveRecord::Migration
  def change
    create_table :compania_seguros do |t|
      t.string :nombre
      t.string :rut
      t.string :dv
      t.string :banco
      t.string :cuenta_bancaria
      t.string :aux1
      t.string :aux2
      t.string :aux3
      t.string :image

      t.timestamps null: false
    end
  end
end
