class Category::ReportsController < ApplicationController
  def index
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @categories = Category.all
  end
end
