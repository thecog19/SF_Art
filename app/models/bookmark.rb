class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :bookmark_list
end
