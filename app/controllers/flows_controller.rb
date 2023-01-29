class FlowsController < ApplicationController
  def index
    @flows = Flow.where(kind: true).desc
  end

  def change_flow
    @flows = Flow.where(kind: params[:kind]).desc
    respond_to do |format|
      format.json { render json: @flows, include: [:category] }
    end
  end
end
