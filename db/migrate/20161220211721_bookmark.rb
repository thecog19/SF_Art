class Bookmark < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :bookmark_list_id, :integer
  end
end
