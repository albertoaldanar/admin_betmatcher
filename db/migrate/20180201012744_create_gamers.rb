class CreateGamers < ActiveRecord::Migration[5.0]
  def change
    create_table :gamers do |t|
      t.string :username
      t.integer :ranking
      t.integer :coins
      t.string :country

      t.timestamps
    end
  end
end
