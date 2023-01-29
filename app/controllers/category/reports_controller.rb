class Category::ReportsController < ApplicationController
  def index
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @categories = params[:kind] ? Category.where(kind: params[:kind]) : Category.where(kind: true)
    @kind = params[:kind] ? params[:kind] : true
  end
end
