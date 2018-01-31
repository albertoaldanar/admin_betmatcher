class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :local
      t.string :visit
      t.string :stadium
      t.string :date

      t.timestamps
    end
  end
end
