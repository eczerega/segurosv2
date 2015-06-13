class CreateEmpresasGrandes < ActiveRecord::Migration
  def change
    create_table :empresas_grandes do |t|
      t.string :nombre
      t.string :representante_legal_rut
      t.integer :dv
      t.string :aux1
      t.string :aux2
      t.string :aux3
      t.string :image

      t.timestamps null: false
    end
  end
end
