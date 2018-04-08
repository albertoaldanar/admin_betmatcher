class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :codigo
      t.integer :cantidad
      t.string :descripcion

      t.timestamps
    end
  end
end
