class AddTokenToVenta < ActiveRecord::Migration
  def change
    add_column :venta, :token, :string
  end
end
