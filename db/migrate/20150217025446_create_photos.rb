class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :UUID
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
