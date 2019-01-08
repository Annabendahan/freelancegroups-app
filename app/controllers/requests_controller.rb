class RequestsController < ApplicationController

  def new
    @team = Team.find(params[:team_id])
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    team = Team.find(params[:team_id])
    @request.team = team
    @request.user = current_user
    @request.save
    redirect_to team_path(team)
    flash[:notice] = "Your request has been sent!"
  end


  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to my_teams_path
    flash[:notice] = "Your answered!"

  end

private

  def request_params
    params.require(:request).permit(:user, :team, :text, :answer, :status)
  end
end
