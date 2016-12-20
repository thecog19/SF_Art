class Name < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :name, :string
  end
end
