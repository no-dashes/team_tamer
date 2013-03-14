class Api::MembersController < Api::ApplicationController
  respond_to :json

  def index
    render json: Member.all.to_json, root: 'member'
  end

  def show
    render json: Member.find(params[:id]), root: 'member'
  end

  def create
    member = Member.create!(params[:member])
    render json: member.to_json
  end

  def update
    member =  Member.update(params[:id], params[:member])
    render json: member.to_json
  end

  def destroy
    respond_with Member.destroy(params[:id])
  end
end
