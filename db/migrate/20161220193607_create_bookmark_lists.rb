class CreateBookmarkLists < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmark_lists do |t|
      t.integer :bookmark_id

      t.timestamps
    end
  end
end
