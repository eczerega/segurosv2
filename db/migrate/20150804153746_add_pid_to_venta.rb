class AddPidToVenta < ActiveRecord::Migration
  def change
    add_column :venta, :pid, :integer
  end
end
