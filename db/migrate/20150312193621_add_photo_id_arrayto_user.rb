class AddPhotoIdArraytoUser < ActiveRecord::Migration
  def change
  	add_column :users, :photo_id, :integer
  	add_index :users, :photo_id
  end
end
