class AddChangeToMaterial < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :change, :integer
  end
end
