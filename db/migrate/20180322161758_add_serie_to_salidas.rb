class AddSerieToSalidas < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :serie, :string
    add_column :salidas, :capacidad, :string
    add_column :salidas, :lecturas, :text
  end
end
