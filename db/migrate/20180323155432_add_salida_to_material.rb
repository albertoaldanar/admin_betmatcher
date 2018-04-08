class AddSalidaToMaterial < ActiveRecord::Migration[5.0]
  def change
    add_reference :materials, :salida, foreign_key: true
  end
end
