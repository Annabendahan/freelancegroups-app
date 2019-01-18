class TeamsController < ApplicationController

  def index
    if params[:query].present?
     sql_query = " teams.title @@ :query \
        OR teams.description @@ :query
        OR teams.location @@ :query \
        "
      #@teams = Team.where(sql_query, query: "%#{params[:query]}%")
      @teams = Team.search_by_title_and_description_and_location("%#{params[:query]}%")
    else
      @teams= Team.all
    end
    @markers = @teams.map do |t|
      {
        lng: t.longitude,
        lat: t.latitude
      }
    end
  end

  def show
    @team = Team.find(params[:id])
    @request = Request.new
    @members = Request.where(team_id: @team.id, status: "Accepted")
    @requests = Request.where(team_id: @team.id, status: "Pending")
    @events = Event.where(team_id: @team.id)
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
    params.require(:team).permit(:title, :description, :location, :capacity, :photo)
  end

end
