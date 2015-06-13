class CreateProductoPersonas < ActiveRecord::Migration
  def change
    create_table :producto_personas do |t|
      t.string :producto
      t.string :nombre_comprador
      t.string :apellido_comprador
      t.string :rut_comprador
      t.integer :digito_verifiador_comprador
      t.string :email_comprador
      t.string :numero_comprador
      t.string :nombre_asegurado
      t.string :apellido_asegurado
      t.string :rut_asegurado
      t.integer :digito_verificador_asegurado
      t.string :email_asegurado
      t.string :numero_asegurado
      t.date :fecha_inicio
      t.date :fecha_termino

      t.timestamps null: false
    end
  end
end
