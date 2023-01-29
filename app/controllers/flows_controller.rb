class FlowsController < ApplicationController
  def index
    @flows = Flow.where(kind: true).desc
  end

  def new
    @flow = Flow.new
  end

  def create
    @flow = Flow.new(flow_params)
    if @flow.save
      redirect_to flows_path, notice: "登録しました"
    else
      render :new
    end
  end

  def change_flow
    @flows = Flow.where(kind: params[:kind]).desc
    respond_to do |format|
      format.json { render json: @flows, include: [:category] }
    end
  end

  private

  def flow_params
    params.require(:flow).permit(:kind, :date, :money, :memo, :category_id)
  end
end
