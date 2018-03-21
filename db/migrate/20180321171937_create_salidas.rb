class CreateSalidas < ActiveRecord::Migration[5.0]
  def change
    create_table :salidas do |t|
      t.integer :folio
      t.date :fecha
      t.string :nombre
      t.string :telefono
      t.string :contacto
      t.string :email
      t.string :solicitud_cliente

      t.timestamps
    end
  end
end
