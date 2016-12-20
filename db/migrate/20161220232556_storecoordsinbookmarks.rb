class Storecoordsinbookmarks < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :coords, :string
  end
end
