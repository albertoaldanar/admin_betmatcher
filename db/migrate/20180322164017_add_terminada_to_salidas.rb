class AddTerminadaToSalidas < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :terminada, :boolean
  end
end
