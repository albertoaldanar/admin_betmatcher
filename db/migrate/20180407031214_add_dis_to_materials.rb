class AddDisToMaterials < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :dis, :integer
  end
end
