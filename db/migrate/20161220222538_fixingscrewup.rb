class Fixingscrewup < ActiveRecord::Migration[5.0]
  def change
    change_column :bookmarks, :bookmarkable_id,  :string
  end
end
