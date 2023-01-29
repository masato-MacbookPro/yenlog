class FlowsController < ApplicationController
  def index
    @flows = Flow.where(kind: true)
  end
end
