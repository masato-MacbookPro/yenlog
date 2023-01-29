class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to 
    end
  end

  def search
    @categories = Category.where(kind: params[:kind])
    respond_to do |format|
      format.json { render json: @categories }
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
