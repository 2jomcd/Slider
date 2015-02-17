class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :photo
      t.integer :rec_moves
      t.string :rec_secs
      t.string :integer

      t.timestamps null: false
    end
  end
end
