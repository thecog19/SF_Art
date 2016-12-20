class Addingcolumns < ActiveRecord::Migration[5.0]
  def change
     add_column :bookmarks, :user_id, :integer
     add_column :bookmark_lists, :user_id, :integer
     add_column :bookmark_lists, :name, :string
  end
end
