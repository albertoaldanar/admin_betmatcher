class AddMarcaToSalidas < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :marca, :string
    add_column :salidas, :modelo, :string
  end
end
