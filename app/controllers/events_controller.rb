class EventsController < ApplicationController


  def new
    @team = Team.find(params[:team_id])
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    team = Team.find(params[:team_id])
    @event.team = team
    @event.save

  end

  private


  def event_params
    params.require(:event).permit(:title, :description, :team_id, :location, :date)
  end
end
