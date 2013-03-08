class Api::SchedulingController < Api::ApplicationController
    respond_to :json

  def index
    render json: Shift.all.to_json
  end

  def show
    respond_with Shift.find(params[:id])
  end

  def create
    # respond_with Shift.create(params[:shift])
    render json: Shift.create(params[:shift]).to_json
  end

  def update
    respond_with Shift.update(params[:id], params[:shift])
  end

  def destroy
    respond_with Shift.destroy(params[:id])
  end
end
