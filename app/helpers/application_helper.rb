module ApplicationHelper
  def unbookmarked
    #current_user.bookmarks.where(bookmarkable_id: params[:id]).empty?
    true
  end
end
