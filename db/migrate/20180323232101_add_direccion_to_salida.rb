class AddDireccionToSalida < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :direccion, :string
  end
end
