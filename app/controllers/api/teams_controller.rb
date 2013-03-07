class Api::TeamsController < Api::ApplicationController
  respond_to :json

  def index
    respond_with Team.all
  end

  def show
    respond_with Team.find(params[:id])
  end

  def create
    respond_with Team.create(params[:team])
  end

  def update
    respond_with Team.update(params[:id], params[:team])
  end

  def destroy
    respond_with Team.destroy(params[:id])
  end
end
