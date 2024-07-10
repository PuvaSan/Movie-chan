class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save

    if @list.save
      redirect_to @list, notice: "#{@list.name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, status: :see_other, notice: "List was deleted"
  end

  private

  def list_params
    params.required(:list).permit(:name, :photo)
  end
end
