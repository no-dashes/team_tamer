class Api::TeamsController < Api::ApplicationController

  def index
    @teams = Team.all
    # render json: @teams.to_json
    respond_to do |format|
      format.json do
        render json: @teams
      end
      format.html
    end
  end

  def show
    render json: Team.find(params[:id]).to_json
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
