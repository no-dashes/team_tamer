class Api::MembersController < Api::ApplicationController
  respond_to :json

  def index
    respond_with Member.all
  end

  def show
    respond_with Member.find(params[:id])
  end

  def create
    member = Member.create!(params[:member])
    render json: member.to_json
  end

  def update
    respond_with Member.update(params[:id], params[:member])
  end

  def destroy
    respond_with Member.destroy(params[:id])
  end
end
