class Api::ShiftsController < Api::ApplicationController
    respond_to :json

  def index
    respond_with Shift.all
  end

  def show
    respond_with Shift.find(params[:id])
  end

  def create
    respond_with Shift.create(params[:shift])
  end

  def update
    respond_with Shift.update(params[:id], params[:shift])
  end

  def destroy
    respond_with Shift.destroy(params[:id])
  end
end
