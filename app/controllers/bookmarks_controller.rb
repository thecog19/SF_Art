class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    @list = current_user.bookmark_lists.find(params[:bookmark][:bookmark_list_id])
    @bookmark = @list.bookmarks.build(bookmark_params)
    @bookmark.user_id = current_user.id
    if @bookmark.save
      flash[:success] = "Created Bookmark"
    else
      flash[:danger] = "Bookmark could not be created!"
    end
    redirect_to :back
  end

  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    if @bookmark.destroy
      flash[:success] = "Deleted Bookmark"
    else
      flash[:danger] = "Bookmark could not be deleted!"
    end
    redirect_to :back
  end

  def index
    @bookmark_lists = current_user.bookmark_lists
  end

  def bookmark_params
    params.require(:bookmark).permit(:bookmarkable_id, :name, :bookmark_list_id, :coords)
  end
end
