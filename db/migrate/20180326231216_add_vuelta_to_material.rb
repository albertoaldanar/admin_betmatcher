class AddVueltaToMaterial < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :vuelta, :boolean
  end
end
