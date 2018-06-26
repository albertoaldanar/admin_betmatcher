class AddMecanicoToSalidas < ActiveRecord::Migration[5.0]
  def change
    add_column :salidas, :mecanico, :string
  end
end
