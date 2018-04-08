class AddCambioToMaterial < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :cambio, :boolean
  end
end
