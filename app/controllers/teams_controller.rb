class TeamsController < ApplicationController
  def index
    @teams= Team.all
  end

  def show
    @team = Team.find(params[:id])
    @requests = Request.where(:team == @team.id)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user = current_user
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

 def team_params
    params.require(:team).permit(:title, :description, :address, :capacity)
  end

end
