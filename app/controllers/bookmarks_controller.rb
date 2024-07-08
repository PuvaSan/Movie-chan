class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(strong_params)
    @bookmark.list = @list
    @bookmark.save

    if @bookmark.save
      redirect_to @list, notice: "movie was successfully added"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def strong_params
    params.required(:bookmark).permit(:movie_id, :comment)
  end
end
