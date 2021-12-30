class AddUserIdToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :user_id, :integer
    add_index :albums, :user_id
  end
end
