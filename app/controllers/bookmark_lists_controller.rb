class BookmarkListsController < ApplicationController

  def create
    @list = current_user.bookmark_lists.build(strong_params)
    if @list.save
      flash[:success] = "Created List"
    else
      flash[:danger] = "List could not be created!"
    end
    redirect_to :back
  end

  def destroy
    @list = current_user.bookmark_lists.find(params[:id])
    if @list.destroy
      flash[:success] = "Deleted List"
    else
      flash[:danger] = "List could not be deleted!"
    end
    redirect_to :back
  end

  def strong_params
    params.require(:bookmark_list).permit(:name)

  end
end
