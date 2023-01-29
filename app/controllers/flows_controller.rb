class FlowsController < ApplicationController
  def index
    @flows = Flow.where(kind: true)
  end

  def change_flow
    @flows = Flow.where(kind: params[:kind])
    respond_to do |format|
      format.json { render json: @flows, include: [:category] }
    end
  end
end
