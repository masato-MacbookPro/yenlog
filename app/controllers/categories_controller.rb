class CategoriesController < ApplicationController
  def search
    @categories = Category.where(kind: params[:kind])
    respond_to do |format|
      format.json { render json: @categories }
    end
  end
end
