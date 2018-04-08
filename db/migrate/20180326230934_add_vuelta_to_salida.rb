class AddVueltaToSalida < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :vuelta, :boolean
  end
end
