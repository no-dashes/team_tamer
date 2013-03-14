class Api::TeamsController < Api::ApplicationController

  def index
    @teams = Team.all
    render json: @teams, :root => false
  end

  def show
    render json: Team.find(params[:id]), :root => false
  end

  def create
    render json: Team.create(params[:team]).to_json
  end

  def update
    render json: Team.update(params[:id], params[:team]).to_json
  end

  def destroy
    render json: Team.destroy(params[:id]).to_json
  end
end
