class AddStatusToSalidas < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :status, :string
  end
end
